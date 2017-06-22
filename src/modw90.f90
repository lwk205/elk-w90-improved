
! Copyright (C) 2015 Jon Lafuente and Manh Duc Le
! This file is distributed under the terms of the GNU General Public License.
! See the file COPYING for license details.

module modw90

!-------------------------------------------------!
!     Wannier90 interface variables               !
!-------------------------------------------------!
! number of wannier functions to calculate
integer wann_nwf
! number of bands to pass to wannier90
integer wann_nband
! index of bands to pass to wannier90
integer, allocatable :: wann_bands(:)
! neighbouring k-points
integer wann_nntot
integer, allocatable :: wann_nnkp(:,:)
real(8) wann_tol
integer wann_maxshell
integer wann_numiter
! wannier projections definitions. Uses same syntax as wannier90 library
integer wann_nproj               ! should be the same as wann_nwf
integer wann_projlines           ! Number of lines in projection block
integer wann_inputlines          ! Number of lines in wann_input block
character(256) wann_projstr(256) ! the projection block to write to .WIN
character(256) wann_input(256)   ! arbitrary input for wannier90 .WIN
character(256) wann_seedname     ! default: ELK 
character(4) wann_proj_units                    ! Ang/Bohr units (cart coords)
real(8), allocatable :: wann_proj_site(:,:)     ! coordinates of sites
logical, allocatable :: wann_proj_haswt(:,:)    ! if proj has weight in this MT
logical, allocatable :: wann_proj_isrand(:)     ! use a random s-type gaussian
integer, allocatable :: wann_proj_l(:)          ! l angular momentum number
integer, allocatable :: wann_proj_m(:)          ! m azimuth number
real(8), allocatable :: wann_proj_zaxis(:,:)    ! local z-axis
real(8), allocatable :: wann_proj_xaxis(:,:)    ! local x-axis
integer, allocatable :: wann_proj_radial(:)     ! type of radial function
real(8), allocatable :: wann_proj_zona(:)       ! Z/a of radial function
real(8), allocatable :: wann_proj_quantdir(:,:) ! local spin quantisation dir
integer, allocatable :: wann_proj_spin(:)       ! u(+1) or d(-1) in quantdir
real(8), allocatable :: wann_projulr(:,:,:,:)   ! the radial part on coarse mesh
complex(8), allocatable :: wann_projclm(:,:,:)  ! the coefficients in Ylm basis

end module
