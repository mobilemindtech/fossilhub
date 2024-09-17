package require TclOO

source ./services/dummy_service.tcl
source $::env(TRAILS_HOME)/controllers/controller.tcl

namespace import ::services::DummyService
namespace import ::trails::controllers::Controller

namespace eval controllers  {
	catch {
		oo::class create IndexController { 
			superclass Controller
		}
	}

	oo::define IndexController {
		constructor {args} {	
			next	
			my variable service scaffold filters counter
		}

		method index {req} {
			Response new -status 200 -text "ok!"
		}
	}
}