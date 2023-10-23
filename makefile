PACKAGES := $(wildcard packages/*)

print: 
		# for feature in $(FEATURES); do \
		# 		echo $$(feature) ; \
		# done 
		for package in $(PACKAGES); do \
				echo $$(package) ; \
		done

pods-clean:
	rm -Rf ios/Pods ; \
	rm -Rf ios/.symlinks ; \
	rm -Rf ios/Flutter/Flutter.framework ; \
	rm -Rf ios/Flutter/Flutter.podspec ; \
	rm ios/Podfile ; \
	rm ios/Podfile.lock ; \


get:
	# flutter pub get
	# for feature in $(FEATURES); do \
	# 	cd $${feature} ; \
	# 	echo "Updating dependencies on $${feature}" ; \
	# 	flutter pub get ; \
	# 	cd ../../../ ; \
	# done
	for package in $(PACKAGES); do \
		cd $${package} ; \
		echo "Updating dependencies on $${package}" ; \
		flutter pub get ; \
		cd ../../ ; \
	done
