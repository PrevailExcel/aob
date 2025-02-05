<script setup>
import { Head, Link } from '@inertiajs/vue3';

defineProps({
    canLogin: {
        type: Boolean,
    },
    canRegister: {
        type: Boolean,
    },
    laravelVersion: {
        type: String,
        required: true,
    },
    phpVersion: {
        type: String,
        required: true,
    },
});
const items = [1, 2, 3, 4, 55, 5, 5, 5, 5]; // Replace with actual data if necessary
</script>

<template>

    <Head title="Welcome | Aunty Oyibo Book" />

    <div class="container py-4">
        <!-- Logo -->
        <div class="d-flex align-items-center my-4">
            <img src="images/book.png" alt="Logo" width="24" height="24">
            <h1 class="ms-2 web-name">Aunty Oyibo Stories</h1>
        </div>

        <!-- Greeting -->
        <h2 class="reader mt-2">Hi Reader,</h2>

        <!-- Search -->
        <div class="input-group my-3">
            <input type="text" class="search form-control" placeholder="Search">

            <button class="ms-2 btn btn-dark search-button">
                <img src="images/search.png">
            </button>
        </div>

        <!-- Quote Section -->
        <div class="bg-brown mt-2 text-white p-4 d-flex align-items-center justify-content-between">
            <div class="pe-5">
                <blockquote class="quote mb-0">
                    <p>“Books and Doors are the same thing. You open them, and you go through into another world.”</p>
                    <footer class="blockquote-footer text-white mt-3">Jeanette Winterson</footer>
                </blockquote>
            </div>
            <img src="images/quote.png" alt="Illustration" class="text-end ms-3 img-fluid" width="100">
        </div>

        <!-- Favorite Books -->
        <h4 class="mt-4 mb-3 avail">Readers Top Choice</h4>
        <div class="slider-container">
            <div class="slider">
                <div v-for="(item, index) in items" :key="index" class="slider-item">
                    <div class="book-card">
                        <img src="images/series-1.png" class="card-img-top rounded-3" alt="Wild Flower">
                        <div class="card-body">
                            <div class="book-title mt-2">Wild Flower</div>
                            <div class="book-author mt-1">By Rejoice K.</div>
                        </div>
                        <div class="progress full-bar mt-2">
                            <div class="progress-bar progress-bar-animated bg-deep-brown" role="progressbar"
                                style="width: 90%;" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Available Books -->
        <h4 class="mt-5 mb-3 avail">Available Books</h4>
        <div class="row">
            <div v-for="a in [1, 1, 1, 1,]" class="col-md-3 col-4 mb-4">
                <div class="book-card">
                    <img src="images/series.png" class="card-img-top rounded-3" alt="Storm Warning">
                    <div class="card-body">
                        <div class="book-title mt-2">Storm Warning</div>
                        <div class="book-author mt-1">By Ejiamadu Prevail</div>
                    </div>

                    <div class="progress full-bar mt-2">
                        <div class="progress-bar progress-bar-animated bg-deep-brown" role="progressbar"
                            style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>

                </div>
            </div>
        </div>

    </div>
</template>
