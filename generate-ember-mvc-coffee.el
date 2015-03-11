(defun generate-route(route-name)
  (interactive "sRoute-name: ")
  (insert (concat route-name "Route = Ember.Route.extend(\n"))
  (insert ")\n"))

(defun generate-ctrl(ctrl-name)
  (interactive "sCtrl-name: ")
  (insert (concat ctrl-name "Controller = Ember.ObjectController.extend(\n"))
  (insert ")\n"))

(defun generate-model(model-name)
  (interactive "sModel-name: ")
  (insert (concat model-name " = DS.Model.extend(\n"))
  (insert ")\n"))

(defun generate-mvc(name)
  (interactive "sName: ")
  (generate-route name)
  (generate-ctrl name)
  (generate-model name))

