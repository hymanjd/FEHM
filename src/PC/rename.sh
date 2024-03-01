# New files with comment
# rename gaz names to master names
#
# NEW FILES
# rename to remove gaz version numbers
# air_properties_new.f90
# co2_properties_new.f90
# co2wh_properties_new.f90
# com_exphase.f
# commass_AWH.f
# interpolate_2b.f90
# interpolate_2c.f90
mv Sub_FEHM_tec_to_vtk_version_2o.f Sub_FEHM_tec_to_vtk.f
mv com_prop_data_2b.f com_prop_data.f
mv explicit_phase_update_a1.f explicit_phase_update.f
mv flowrate_vectors_2c.f flowrate_vectors.f
mv fluid_prop_control_7h.f fluid_prop_control.f
mv indiff_2a.f indiff.f
mv varchk_AWH_a3.f varchk_AWH.f
mv varchk_simple_awh_2c.f varchk_simple_awh.f
mv write_avs_node_mat_s_2i.f write_avs_node_mat_s.f

# FIX GAZ names to MASTER names
mv accum_derivative_2d.f accum_derivative.f
mv accum_term_2d.f accum_term.f
mv add_gdpm_2a.f add_gdpm.f
mv air_combine_2d.f air_combine.f
mv airctr_3m.f airctr.f
mv airctr_part_2d.f airctr_part.f
mv allocmem_2c.f allocmem.f
mv avs_io_2d.f avs_io.f
mv avsio_2e.f avsio.f
mv bcon_2a.f bcon.f
mv bnswer_2d.f bnswer.f
mv bnswer_part_2d.f bnswer_part.f
mv check_rlp_2c.f check_rlp.f
mv co2ctr_2w.f co2ctr.f
mv comai_2h.f comai.f
mv combi_2c.f combi.f
mv comdi_4b.f comdi.f
mv comfi_2de.f comfi.f
mv comii_2.f comii.f
mv comrlp_2a.f comrlp.f
mv comsteady_2.f comsteady.f
mv connectivity_symmmetry_test_2a.f connectivity_symmmetry_test.f
mv contr_2b.f contr.f
mv convctr_2h.f convctr.f
mv data_4c.f data.f
mv datchk_2e.f datchk.f
mv dated_a5.f dated.f
mv diagnostics_2b.f diagnostics.f
mv diskwrite_new_2a.f diskwrite_new.f
mv dvacalc_a3.f dvacalc.f
mv elem_type_2a.f elem_type.f
mv fehmn_pcx_4_2h.f fehmn.f
mv flow_boun_b0.f flow_boun.f
mv flow_boundary_conditions_b0.f flow_boundary_conditions.f
mv flxz_2.f flxz.f
mv gdkm_volume_fraction_interface_2c.f gdkm_volume_fraction_interface.f
mv gencon_2a.f gencon.f
mv geneq1_2a.f geneq1.f
mv geneq2_2m.f geneq2.f
mv geneq2_rich_2d.f geneq2_rich.f
mv geneq2_wtsi_2d.f geneq2_wtsi.f
mv geneq2_wtsi_well_2d.f geneq2_wtsi_well.f
mv gensl2_2e.f gensl2.f
mv gensl2_switch_2d.f gensl2_switch.f
mv gensl3_2a.f gensl3.f
mv gensl4_2d.f gensl4.f
mv gradctr_1.f gradctr.f
mv h2o_properties_new_1.f90 h2o_properties_new.f90
mv head_2phase_2d.f head_2phase.f
mv headctr_2d.f headctr.f
mv infiles_2b.f infiles.f
mv inflo3_2e.f inflo3.f
mv inflow_2d.f inflow.f
mv ingdpm_2b.f ingdpm.f
mv inhist_2b.f inhist.f
mv initdata2_2g.f initdata2.f
mv innode_2c.f innode.f
mv inpres_2b.f inpres.f
mv input_2g.f input.f
mv inrlp_2b.f90 inrlp.f90
# keep interpolate_2a.f90 
mv model_setup_2d.f model_setup.f
mv normal_dof_2b.f normal_dof.f
mv nr_stop_ctr_2f.f nr_stop_ctr.f
mv outbnd_2.f outbnd.f
mv pest_2.f pest.f
mv plot_new_2c.f plot_new.f
mv read_avs_io_2a.f read_avs_io.f
mv renum_1.f renum.f
mv resetv_2d.f resetv.f
mv rlp_cap_2a.f90 rlp_cap.f90
mv rlperm_2e.f rlperm.f
mv scanin_b6.f scanin.f
mv setconnarray_3.f setconnarray.f
mv setparams_2c.f setparams.f
mv startup_2g.f startup.f
mv steady_4.f steady.f
mv sther_2.f sther.f
mv structured_2a.f structured.f
mv submodel_bc_2d.f submodel_bc.f
mv sx_combine_2da.f sx_combine.f
mv termin_2.f termin.f
mv thermw_prop_2g.f thermw.f
mv thrair_3m.f thrair.f
mv thrmwc_9_prop7eb.f thrmwc.f
mv thrsznapl_2d.f thrsznapl.f
mv user_ymp1.f user_ymp.f
mv varchk_12f.f varchk.f
mv vgcap_2e.f vgcap.f
mv vgcap_inv_calc_2d.f vgcap_inv_calc.f
mv vgrlp_2a.f vgrlp.f
mv vgrlps_2e.f vgrlps.f
mv wellimped_ctr_2d.f wellimped_ctr.f
mv wellphysicsctr_2d.f wellphysicsctr.f
mv write_avs_head_s_2g.f write_avs_head_s.f
mv write_avs_node_con_2c.f write_avs_node_con.f
mv write_avs_node_hf_3.f write_avs_node_hf.f
mv write_avs_node_s_2i.f write_avs_node_s.f
mv write_avs_node_v_2a.f write_avs_node_v.f
mv wrtout_2d.f wrtout.f
mv zone_2g.f zone.f
