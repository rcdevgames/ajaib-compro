<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;

/**
 * Class BaseController
 *
 * BaseController provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BaseController
 *
 * For security be sure to declare any new methods as protected or private.
 */

class BaseController extends Controller
{
	// public function __construct()
	// {
	// 	echo "<pre>";
	// 	print_r(get_defined_constants(true));die;
	// }
	/**
	 * An array of helpers to be loaded automatically upon
	 * class instantiation. These helpers will be available
	 * to all other controllers that extend BaseController.
	 *
	 * @var array
	 */
	protected $helpers = ['form','website'];

	/**
	 * Constructor.
	 *
	 * @param RequestInterface  $request
	 * @param ResponseInterface $response
	 * @param LoggerInterface   $logger
	 */
	public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
	{
		// Do Not Edit This Line
		parent::initController($request, $response, $logger);

		//--------------------------------------------------------------------
		// Preload any models, libraries, etc, here.
		//--------------------------------------------------------------------
		// E.g.: $this->session = \Config\Services::session();
		$this->session 	= \Config\Services::session();
		$this->db      	= \Config\Database::connect();
		$this->language = \Config\Services::language();
		$this->lang 	= $this->session->get('web_lang');


		$this->changeLanguage();
	}

	public function changeLanguage()
	{
		/* ------------------------------------------------------------------------------------------------------- */
		$supportLang = ['id', 'en'];
		if (!empty($_SERVER['HTTP_ACCEPT_LANGUAGE'])) {
		    $acceptLang = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);
		    $language = in_array($acceptLang, $supportLang) ? $acceptLang : 'id';
		} else {
		    $language = 'id';
		}

		if ($this->session->get('web_lang') !== null) {
			$language = $this->session->get('web_lang');
		}
		$this->language->setLocale($language);
		define('WEB_LANG', $language);
		/* ------------------------------------------------------------------------------------------------------- */
	}
}
