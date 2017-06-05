<?php

/**
 * Built-in support for the Genesis theme.
 *
 * @since 1.0
 */
final class FLThemeBuilderSupportGenesis {

	/**
	 * Setup support for the theme.
	 *
	 * @since 1.0
	 * @return void
	 */
	static public function init() {
		add_theme_support( 'fl-theme-builder-headers' );
		add_theme_support( 'fl-theme-builder-footers' );
		add_theme_support( 'fl-theme-builder-parts' );

		add_filter( 'fl_theme_builder_part_hooks', __CLASS__ . '::register_part_hooks' );

		add_action( 'wp', __CLASS__ . '::setup_headers_and_footers' );
	}

	/**
	 * Registers hooks for theme parts.
	 *
	 * @since 1.0
	 * @return void
	 */
	static public function register_part_hooks() {
		return array(
			array(
				'label' => __( 'Page', 'fl-theme-builder' ),
				'hooks' => array(
					'genesis_before' => __( 'Page Open', 'fl-theme-builder' ),
					'genesis_after'  => __( 'Page Close', 'fl-theme-builder' ),
				),
			),
			array(
				'label' => __( 'Header', 'fl-theme-builder' ),
				'hooks' => array(
					'genesis_before_header'    => __( 'Before Header', 'fl-theme-builder' ),
					'genesis_header_right'     => __( 'Header Right', 'fl-theme-builder' ),
					'genesis_after_header'     => __( 'After Header', 'fl-theme-builder' ),
				),
			),
			array(
				'label' => __( 'Content', 'fl-theme-builder' ),
				'hooks' => array(
					'genesis_before_content'  => __( 'Before Content', 'fl-theme-builder' ),
					'genesis_after_content'   => __( 'After Content', 'fl-theme-builder' ),
				),
			),
			array(
				'label' => __( 'Footer', 'fl-theme-builder' ),
				'hooks' => array(
					'genesis_before_footer'    => __( 'Before Footer', 'fl-theme-builder' ),
					'genesis_after_footer'     => __( 'After Footer', 'fl-theme-builder' ),
				),
			),
			array(
				'label' => __( 'Sidebar', 'fl-theme-builder' ),
				'hooks' => array(
					'genesis_before_sidebar_widget_area' => __( 'Before Sidebar', 'fl-theme-builder' ),
					'genesis_after_sidebar_widget_area'  => __( 'After Sidebar', 'fl-theme-builder' ),
				),
			),
			array(
				'label' => __( 'Posts', 'fl-theme-builder' ),
				'hooks' => array(
					'genesis_before_loop'      => __( 'Before Loop', 'fl-theme-builder' ),
					'genesis_before_entry'     => __( 'Before Post', 'fl-theme-builder' ),
					'genesis_entry_header'     => __( 'Post Header', 'fl-theme-builder' ),
					'genesis_entry_content'    => __( 'Post Content', 'fl-theme-builder' ),
					'genesis_entry_footer'     => __( 'Post Footer', 'fl-theme-builder' ),
					'genesis_after_entry'      => __( 'After Post', 'fl-theme-builder' ),
					'genesis_after_loop'       => __( 'After Loop', 'fl-theme-builder' ),
				),
			),
		);
	}

	/**
	 * Setup headers and footers.
	 *
	 * @since 1.0
	 * @return void
	 */
	static public function setup_headers_and_footers() {
		$header_ids = FLThemeBuilderLayoutData::get_current_page_header_ids();
		$footer_ids = FLThemeBuilderLayoutData::get_current_page_footer_ids();

		if ( ! empty( $header_ids ) ) {
			remove_action( 'genesis_header', 'genesis_header_markup_open', 5 );
			remove_action( 'genesis_header', 'genesis_do_header' );
			remove_action( 'genesis_header', 'genesis_header_markup_close', 15 );
			add_action( 'genesis_header', 'FLThemeBuilderLayoutRenderer::render_header' );
		}
		if ( ! empty( $footer_ids ) ) {
			remove_action( 'genesis_footer', 'genesis_footer_markup_open', 5 );
			remove_action( 'genesis_footer', 'genesis_do_footer' );
			remove_action( 'genesis_footer', 'genesis_footer_markup_close', 15 );
			add_action( 'genesis_footer', 'FLThemeBuilderLayoutRenderer::render_footer' );
		}
	}
}

FLThemeBuilderSupportGenesis::init();
