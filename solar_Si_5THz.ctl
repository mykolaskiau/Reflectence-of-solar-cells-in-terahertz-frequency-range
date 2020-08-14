

(define-param out_dir "solar_test_Si_f5THz")		
(define-param eps 11.7)	
(define angle (/ (* 60 pi) 180))

			
(set! Courant 0.5)
(set! eps-averaging? false)
(set! resolution 120)		
(set-param! k-point (vector3 0 0 0)) ;uztikrina ta pacia faze ant krastu
(set! geometry-lattice (make lattice (size 0.05774 0.05774 70))) ;a=100um 
(set! geometry (list 

; %%%%%%%%%%%%%% Pagrindas (PADEKLAS??) si p ~0.92 Ohm/cm %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	(make block 
		(center 0 0 -13.999) 
		(size 0.05774 0.05774 2)  
                (material (make dielectric (epsilon eps) (E-susceptibilities (make drude-susceptibility 
							(sigma 1)         ; laidis
							(frequency 0.584)    ; frequency scale factor 1.745THz
							(gamma 0.504)        ; loss rate 1.51THZ
							 ))))
		
	)
          ;metalo plona plokstele po padeklu 100nm
	(make block                                   
		(center 0 0 -14.9995)   
		(size 0.05774 0.05774 0.001)    
                (material perfect-electric-conductor)
	)
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% pradinis staciakmapis is kurio formuosis piramide% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	(make block                   
		(center 0 0 -12.974)                    
		(size 0.05774 0.05774 0.05) ; h=5um
		(e1 1 0 0)
                (e2 0 1 0)
                (e3 0 0 1)  
                (material (make dielectric (epsilon eps) (E-susceptibilities (make drude-susceptibility 
							(sigma 1)         ; laidis
							(frequency 0.584)    ; frequency scale factor 1.745THz
							(gamma 0.504)        ; loss rate 1.51THZ
		
					
		))))
	)
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% n legiruoti blockai % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	(make block                        ;n tipo blokas 1
		(center 0.011548 0 -12.974 )                    
		(size 0.005774 0.05774 0.05774 )           
		(e1 1 0 0)
                (e2 0 1 0)  
		(e3 (-(cos angle)) 0 (sin angle))
                (material (make dielectric (epsilon eps) (E-susceptibilities (make drude-susceptibility 
							(sigma 1)         
							(frequency 19.3)    ; frequency scale factor THz
							(gamma 19.48)        ; loss rate THZ
		
					
		))))
	)

	(make block                        ;n tipo blokas 2
		(center -0.011548 0 -12.974 )                    
		(size 0.005774 0.05774 0.05774 )           
		(e1 1 0 0)
                (e2 0 1 0)  
		(e3 (cos angle) 0 (sin angle))
                (material (make dielectric (epsilon eps) (E-susceptibilities (make drude-susceptibility 
							(sigma 1)         
							(frequency 19.3)    ; frequency scale factor THz
							(gamma 19.48)        ; loss rate THZ
					
		))))
	)

	(make block                        ;n tipo blokas 3
		(center 0 0.0101548 -12.974 )                    
		(size 0.05774 0.005774 0.05774 )           
		(e1 1 0 0)
                (e2 0 1 0)  
		(e3 0 (-(cos angle)) (sin angle))
                (material (make dielectric (epsilon eps) (E-susceptibilities (make drude-susceptibility 
							(sigma 1)         
							(frequency 19.3)    ; frequency scale factor THz
							(gamma 19.48)        ; loss rate THZ       
		
					
		))))
	)

	(make block                        ;n tipo blokas 4
		(center 0 -0.011548 -12.974 )                    
		(size 0.05774 0.005774 0.05774 )           
		(e1 1 0 0)
                (e2 0 1 0)  
		(e3 0 (cos angle) (sin angle))
                (material (make dielectric (epsilon eps) (E-susceptibilities (make drude-susceptibility 
							(sigma 1)        
							(frequency 19.3)    ; frequency scale factor THz
							(gamma 19.48)        ; loss rate THZ
		
					
		))))
	)
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% oro blockai kad padaryt piramide% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%		
	(make block                        ; oro blockas 1
		(center  0.014435 0 -12.949 )                    
		(size 0.05774 0.05774 0.05 )           
		(e1 (-(cos angle)) 0 (sin angle))
                (e2 0 1 0)
                (e3 0 0 1)  
                (material (make dielectric (epsilon 1))) 
	)
	
	(make block                        ; oro blockas 2
		(center  -0.014435 0 -12.949 )                    
		(size 0.05774 0.05774 0.05 )           
		(e1 (cos angle) 0 (sin angle))
                (e2 0 1 0)
                (e3 0 0 1)  
                (material (make dielectric (epsilon 1))) 
	)	
	
	(make block                        ; oro blockas 3
		(center 0 0.014435 -12.949 )                    
		(size 0.05774 0.05774 0.05 )  
		(e1 1 0 0)          
		(e2 0 (-(cos angle)) (sin angle))
                (e3 0 0 1)  
                (material (make dielectric (epsilon 1))) 
	)
	(make block                        ; oro blockas 4
		(center 0 -0.014435 -12.949 )                    
		(size 0.05774 0.05774 0.05 )  
		(e1 1 0 0)          
		(e2 0 (cos angle) (sin angle))
                (e3 0 0 1)  
                (material (make dielectric (epsilon 1))) 
	)


))
				
;(set! symmetries (list (make mirror-sym (direction X)(phase -1))
		       ;(make mirror-sym (direction Y)(phase -1))
		       ;(make mirror-sym (direction Z)(phase 1))
;))

				
(set! pml-layers (list (make absorber (direction Z) (thickness 20 ))))


(set! sources (list
	(make source 
		(size 0 0 1)  
		(src (make gaussian-src (frequency 1.667) (fwidth 1) )) ;f=5THz
		(component Ex)
                ;(component Hy) 
		(amplitude 1)
		(center 0 0 10)
	)	
))


(use-output-directory out_dir)
(run-until 100	
	
				; Atsispausdiname eps pjuvi testavimo tikslais:	
	(at-beginning 
		(in-volume
			(volume 
				(center 0 0 0)
				(size 0.05774 0.05774 70)  
			)
		output-epsilon)
	)
				; Spausdiname laukų žemėlapį testavimo tikslais:
	(at-every 5 
		(in-volume
			(volume 
				(center 0 0 0)
				(size 0.05774 0.05774 70) 
			)
		output-efield-x)
	)
				; Įrašome Ex vertes ant (0,0) simetrijos ašies - 1D:
	(to-appended "Efieldx" 
		(at-every 0.1 ;dt
			(in-volume 
				(volume 
					(center 0 0 0) 
					(size 0 0 30) ; irasymo sritis
				) 
			output-efield-x)
		)
	)

)
		

