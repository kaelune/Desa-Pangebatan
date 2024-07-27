<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('page_items', function (Blueprint $table) {
            $table->id();
            $table->text('services_heading');
            $table->text('services_banner');
            $table->text('services_seo_title')->nullable();
            $table->text('services_seo_meta_description')->nullable();
            $table->text('portfolio_heading');
            $table->text('portfolio_banner');
            $table->text('portfolio_seo_title')->nullable();
            $table->text('portfolio_seo_meta_description')->nullable();
            $table->text('about_heading');
            $table->text('about_banner');
            $table->text('about_photo')->nullable();
            $table->text('about_description');

            $table->text('about_history')->nullable();
            $table->text('about_vision')->nullable();
            $table->text('about_mission')->nullable();

            $table->text('about_seo_title')->nullable();
            $table->text('about_seo_meta_description')->nullable();
            
            $table->text('contact_heading');
            $table->text('contact_banner');
            $table->text('contact_address');
            $table->text('contact_email');
            $table->text('contact_phone');
            $table->text('contact_map_iframe');
            $table->text('contact_seo_title')->nullable();
            $table->text('contact_seo_meta_description')->nullable();

            $table->text('faq_heading');
            $table->text('faq_banner');
            $table->text('faq_seo_title')->nullable();
            $table->text('faq_seo_meta_description')->nullable();

            $table->text('blog_heading');
            $table->text('blog_banner');
            $table->text('blog_seo_title')->nullable();
            $table->text('blog_seo_meta_description')->nullable();
            $table->text('category_banner')->nullable();
            $table->text('archive_banner');
            $table->text('archive_seo_title')->nullable();
            $table->text('archive_seo_meta_description')->nullable();
            $table->text('search_banner');
            $table->text('search_seo_title')->nullable();
            $table->text('search_seo_meta_description')->nullable();
            $table->text('photo_gallery_heading');
            $table->text('photo_gallery_banner');
            $table->text('video_gallery_heading');
            $table->text('video_gallery_banner');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('page_items');
    }
};
