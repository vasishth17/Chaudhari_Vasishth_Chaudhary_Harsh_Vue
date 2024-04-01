const carStore = Vue.createApp({
    created() {

        this.fetchCarsData();
    },
    data() {
        return {
            carsData: [],
            filteredCarsData: [],
            selectedCar: null,
            error: '',
            searchQuery: '',
            isLoading: false
        };
    },
    methods: {
        fetchCarsData() {
            this.isLoading = true;
            this.error = '';
            fetch('http://localhost/cars-api/public/cars')
                .then(response => {
                    if (!response.ok) {
                        throw new Error(`Failed to load: ${response.statusText} (${response.status})`);
                    }
                    return response.json();
                })
                .then(data => {
                    this.carsData = data;
                    this.filteredCarsData = data;
                })
                .catch(error => {
                    console.error('Error fetching car list:', error);
                    this.error = `An error occurred: ${error.message}. Please try again.`;
                })
                .finally(() => this.isLoading = false);
        },
        getCarDetails(carId) {
            fetch(`http://localhost/cars-api/public/cars/${carId}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(`HTTP error! status: ${response.status}`);
                    }
                    return response.json();
                })
                .then(data => {
                    this.selectedCar = data;

                    this.$nextTick(() => {

                        const detailsContainer = document.querySelector('#carInfoCon');
                        if (detailsContainer) {
                            detailsContainer.scrollIntoView({ behavior: 'smooth', block: 'start' });
                        }
                    });
                })
                .catch(error => {
                    console.error('Error fetching car details:', error);
                    this.error = 'An error occurred while fetching the car details. Please try again later.';
                });
        }
    },
    watch: {
        searchQuery(newQuery) {
            if (newQuery) {
                this.filteredCarsData = this.carsData.filter(car => {
                    return car.make.toLowerCase().includes(newQuery.toLowerCase()) ||
                        car.model.toLowerCase().includes(newQuery.toLowerCase());
                });
            } else {
                this.filteredCarsData = this.carsData;
            }
        }
    }
});

carStore.mount('#app');
