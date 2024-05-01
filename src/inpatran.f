      subroutine inpatran
!***********************************************************************
!  Copyright, 1993, 2004,  The  Regents of the University of California.
!  This program was prepared by the Regents of the University of 
!  California at Los Alamos National Laboratory (the University) under  
!  contract No. W-7405-ENG-36 with the U.S. Department of Energy (DOE). 
!  All rights in the program are reserved by the DOE and the University. 
!  Permission is granted to the public to copy and use this software 
!  without charge, provided that this Notice and any statement of 
!  authorship are reproduced on all copies. Neither the U.S. Government 
!  nor the University makes any warranty, express or implied, or 
!  assumes any liability or responsibility for the use of this software.
C***********************************************************************
CD1
CD1 PURPOSE
CD1
CD1 Read in geometric data generated by patran mesh generator.
CD1 
C***********************************************************************
CD2
CD2 REVISION HISTORY 
CD2
CD2 Revision                    ECD
CD2 Date         Programmer     Number  Comments
CD2
CD2 21-DEC-93    Z. Dash        22      Initial implementation.
CD2
CD2 $Log:   /pvcs.config/fehm90/src/inpatran.f_a  $
!D2 
!D2    Rev 2.5   06 Jan 2004 10:43:20   pvcs
!D2 FEHM Version 2.21, STN 10086-2.21-00, Qualified October 2003
!D2 
!D2    Rev 2.4   29 Jan 2003 09:09:06   pvcs
!D2 FEHM Version 2.20, STN 10086-2.20-00
!D2 
!D2    Rev 2.3   14 Nov 2001 13:10:20   pvcs
!D2 FEHM Version 2.12, STN 10086-2.12-00
!D2 
!D2    Rev 2.2   06 Jun 2001 13:24:52   pvcs
!D2 FEHM Version 2.11, STN 10086-2.11-00
!D2 
!D2    Rev 2.1   30 Nov 2000 12:03:58   pvcs
!D2 FEHM Version 2.10, STN 10086-2.10-00
!D2 
!D2    Rev 2.0   Fri May 07 14:42:46 1999   pvcs
!D2 FEHM Version 2.0, SC-194 (Fortran 90)
CD2 
CD2    Rev 1.2   Tue Jan 30 13:09:58 1996   hend
CD2 Updated Requirements Traceability
CD2 
CD2    Rev 1.1   03/18/94 16:03:40   gaz
CD2 Added solve_new and cleaned up memory management.
CD2 
CD2    Rev 1.0   01/20/94 10:25:10   pvcs
CD2 original version in process of being certified
CD2 
C***********************************************************************
CD3
CD3 INTERFACES
CD3
CD3 Formal Calling Parameters
CD3
CD3   None
CD3
CD3 Interface Tables
CD3
CD3   None
CD3
CD3 Files
CD3
CD3   Name                     Use  Description
CD3
CD3   iout                     O    File used for general code output
CD3   unit 42                  I    File that contains patran mesh
CD3                                   generator geometric data
CD3
C***********************************************************************
CD4
CD4 GLOBAL OBJECTS
CD4
CD4 Global Constants
CD4
CD4   None
CD4
CD4 Global Types
CD4
CD4   None
CD4
CD4 Global Variables
CD4
CD4                            COMMON
CD4   Identifier      Type     Block  Description
CD4
CD4   cord            REAL*8   fbs    Contains the coordinates of each node
CD4   iout            INT      faai   Unit number for output file
CD4   nei             INT      faai   Total number of elements in the problem
CD4   nelm            INT      fbb    ?Nodal connectivity information
CD4   neq             INT      faai   Number of nodes
CD4   ns              INT      faai   Number of nodes per element
CD4
CD4
CD4 Global Subprograms
CD4
CD4   None
CD4
C***********************************************************************
CD5
CD5 LOCAL IDENTIFIERS
CD5
CD5 Local Constants
CD5
CD5   None
CD5
CD5 Local Types
CD5
CD5   None
CD5
CD5 Local variables
CD5
CD5   Identifier      Type     Description
CD5
CD5   ca              REAL*8   ?
CD5   i               INT      Loop index
CD5   id              INT      ?
CD5   id1             INT      ?
CD5   id2             INT      ?
CD5   id3             INT      ?
CD5   id4             INT      ?
CD5   id5             INT      ?
CD5   id6             INT      ?
CD5   id7             INT      ?
CD5   id8             INT      ?
CD5   id9             INT      ?
CD5   id10            INT      ?
CD5   nel             INT      ?
CD5   node            INT      ?
CD5   r1              REAL*8   ?
CD5   r2              REAL*8   ?
CD5   r3              REAL*8   ?
CD5   titlp           CHAR     Title string in patran file
CD5
CD5 Local Subprograms
CD5
CD5   Identifier      Type     Description
CD5
CD5
C***********************************************************************
CD6
CD6 FUNCTIONAL DESCRIPTION
CD6
C***********************************************************************
CD7
CD7 ASSUMPTIONS AND LIMITATIONS
CD7
CD7 None
CD7
C***********************************************************************
CD8
CD8 SPECIAL COMMENTS
CD8
CD8  Requirements from SDN: 10086-RD-2.20-00
CD8    SOFTWARE REQUIREMENTS DOCUMENT (RD) for the
CD8    FEHM Application Version 2.20
CD8
C***********************************************************************
CD9
CD9 REQUIREMENTS TRACEABILITY
CD9
CD9 2.6 Provide Input/Output Data Files
CD9 3.0 INPUT AND OUTPUT REQUIREMENTS
CD9
C***********************************************************************
CDA
CDA REFERENCES
CDA
CDA None
CDA
C***********************************************************************
CPS
CPS PSEUDOCODE
CPS
CPS BEGIN  inpatran
CPS 
CPS   LOOP
CPS      
CPS     read data content flag
CPS     
CPS   EXIT IF end of data is found
CPS   
CPS     IF title flag
CPS     
CPS        read title
CPS        
CPS     ELSE IF number flag
CPS     
CPS        read number of nodes and elements
CPS        read title
CPS        
CPS     ELSE IF node information flag
CPS     
CPS        read node information
CPS        
CPS     ELSE IF element information flag
CPS     
CPS        read element information
CPS        IF 2D elements 
CPS           set number of nodes per element to 4
CPS        ELSE if 3D elements
CPS           set number of nodes per element to 8
CPS        ENDIF
CPS        read nodal connectivity information
CPS           
CPS     ELSE 
CPS     
CPS        write error message to output file
CPS        terminate program
CPS        
CPS     END IF
CPS   
CPS   ENDLOOP
CPS 
CPS END  inpatran
CPS
C***********************************************************************

      use combi
      use comdti
      use comai
      implicit none

      real*8 ca,r1,r2,r3
      integer i,id,id1,id2,id3,id4,id5,id6,id7,id8,id9,id10,nel,node

      character*80  titlp

c**** input to mesh from patran mesh generator

 11   continue

      read (42, '(i2)') id

      if (id .eq. 99) then
c**** identified end of data ****
         go to 12

      else if (id .eq. 25) then
c**** read title ****
         read (42,'(a80)') titlp

      else if (id .eq. 26) then
c**** read in number of nodes and elements ****
         backspace 42
         read (42, '(i2, 8i8)') id1, id2, id3, id4, neq, nei, id5, 
     *        id6, id7
         read (42,'(80a)')titlp

      else if (id .eq. 1) then
c**** read in node information ****
         backspace 42
         read (42,'(i2, 8i8)') id1, node, id2, id3, id4, id5, id6, 
     *        id7, id8
         read (42, '(3e16.9)') cord(node, 1), cord(node, 2),
     *        cord(node, 3)
         read (42,'(i1, 1a1, 3i8, 2x, 6i1)') id1, ca, id2, id3, id4, 
     *        id5, id6, id7, id8, id9, id10

      else if (id .eq. 2) then
c**** element information ****
         backspace 42
         read (42, '(i2, 8i8)') id1, nel, id2, id3, id4, id5, id6, 
     *        id7, id8
         read (42, '(4i8, 3e16.9)') ns, id1, id2, id3, r1, r2, r3
         if (ns .eq. 3) then
            ns = 4
         else if (ns .eq. 6) then
            ns = 8
         end if
         read (42, '(10i8)') (nelm((nel-1) * ns + i), i = 1, ns)

      else
c**** error condition ****
         write (ierr,*) ' error in patran input'
         if (iout .ne. 0) write (iout,*) ' error in patran input'
         stop
      endif

      go to 11

 12   continue

      end
