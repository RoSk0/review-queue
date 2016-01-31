<?php

/**
 * @file
 * Enables modules and site configuration for the Review queue profile.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function review_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  $form['site_information']['site_name']['#default_value'] = t('Review queue');

  $form['regional_settings']['#access'] = FALSE;

  // Set country to NZ.
  $form['regional_settings']['site_default_country'] = array(
    '#type' => 'value',
    '#value' => 'NZ',
  );

  // Set timezone to Auckland.
  $form['regional_settings']['date_default_timezone'] = array(
    '#type' => 'value',
    '#value' => 'Pacific/Auckland',
  );
}
