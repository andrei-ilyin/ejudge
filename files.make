# -*- Makefile -*-
# $Id$

# Copyright (C) 2002-2006 Alexander Chernov <cher@ispras.ru> */

# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2 of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.

USERLIST_CLNT_CFILES=\
 userlist_clnt/add_field.c\
 userlist_clnt/admin_process.c\
 userlist_clnt/change_registration.c\
 userlist_clnt/clear_team_passwords.c\
 userlist_clnt/close.c\
 userlist_clnt/delete_field.c\
 userlist_clnt/do_pass_fd.c\
 userlist_clnt/dump_database.c\
 userlist_clnt/edit_field.c\
 userlist_clnt/generate_team_passwd.c\
 userlist_clnt/get_contests.c\
 userlist_clnt/get_info.c\
 userlist_clnt/get_param.c\
 userlist_clnt/get_uid_by_pid.c\
 userlist_clnt/get_uid_by_pid_2.c\
 userlist_clnt/list_all_users.c\
 userlist_clnt/list_users.c\
 userlist_clnt/login.c\
 userlist_clnt/logout.c\
 userlist_clnt/lookup_cookie.c\
 userlist_clnt/map_contest.c\
 userlist_clnt/open.c\
 userlist_clnt/pass_fd.c\
 userlist_clnt/priv_cookie.c\
 userlist_clnt/priv_login.c\
 userlist_clnt/recv_packet.c\
 userlist_clnt/register_contest.c\
 userlist_clnt/register_new.c\
 userlist_clnt/remove_member.c\
 userlist_clnt/send_packet.c\
 userlist_clnt/set_info.c\
 userlist_clnt/set_passwd.c\
 userlist_clnt/team_cookie.c\
 userlist_clnt/team_login.c\
 userlist_clnt/team_set_passwd.c

SERVE_CLNT_CFILES=\
 serve_clnt/do_pass_fd.c\
 serve_clnt/edit_run.c\
 serve_clnt/edit_user.c\
 serve_clnt/get_archive.c\
 serve_clnt/get_param.c\
 serve_clnt/import_xml_runs.c\
 serve_clnt/master_page.c\
 serve_clnt/message.c\
 serve_clnt/open.c\
 serve_clnt/pass_fd.c\
 serve_clnt/recv_packet.c\
 serve_clnt/rejudge_by_mask.c\
 serve_clnt/reset_filter.c\
 serve_clnt/send_packet.c\
 serve_clnt/show_item.c\
 serve_clnt/simple_cmd.c\
 serve_clnt/standings.c\
 serve_clnt/submit_clar.c\
 serve_clnt/submit_run.c\
 serve_clnt/submit_run_2.c\
 serve_clnt/team_page.c\
 serve_clnt/upload_report.c\
 serve_clnt/view.c

SUPER_CLNT_CFILES=\
 super_clnt/create_contest.c\
 super_clnt/do_pass_fd.c\
 super_clnt/main_page.c\
 super_clnt/open.c\
 super_clnt/pass_fd.c\
 super_clnt/recv_packet.c\
 super_clnt/send_packet.c\
 super_clnt/set_param.c\
 super_clnt/simple_cmd.c

COMMON_CFILES=\
 archive_paths.c\
 base64.c\
 cgi.c\
 clarlog.c\
 clntutil.c\
 compile_packet_1.c\
 compile_packet_2.c\
 compile_packet_3.c\
 compile_packet_4.c\
 compile_packet_5.c\
 compile_packet_6.c\
 contests.c\
 contest_tmpl.c\
 copyright.c\
 diff.c\
 digest_1.c\
 digest_2.c\
 digest_3.c\
 digest_4.c\
 digest_5.c\
 dos2unix_str.c\
 errlog.c\
 expat_iface.c\
 filehash.c\
 filter_eval.c\
 filter_tree.c\
 html.c\
 html_date_select.c\
 html_hyperref.c\
 html_start_form.c\
 l10n.c\
 master_html.c\
 misctext.c\
 ncurses_utils.c\
 opcaps.c\
 parsecfg.c\
 parsecfg_2.c\
 pathutl.c\
 prepare.c\
 prepare_out.c\
 prepare_serve.c\
 printing.c\
 protocol.c\
 runlog.c\
 runlog_import.c\
 runlog_xml.c\
 run_packet_1.c\
 run_packet_2.c\
 run_packet_3.c\
 run_packet_4.c\
 run_packet_5.c\
 run_packet_6.c\
 run_packet_7.c\
 send_job_packet.c\
 sformat.c\
 super_html.c\
 super_html_2.c\
 super_html_3.c\
 super_proto.c\
 sha.c\
 teamdb.c\
 team_extra.c\
 team_extra_xml.c\
 testinfo.c\
 testing_report_xml.c\
 tex_dom.c\
 tex_dom_parse.c\
 tex_dom_doc.c\
 tex_dom_render.c\
 tsc.c\
 userlist.c\
 userlist_cfg.c\
 userlist_proto.c\
 userlist_xml.c\
 varsubst.c\
 vcs.c\
 xml_utils/attr_bool.c\
 xml_utils/elem_ip_mask.c\
 xml_utils/empty_text.c\
 xml_utils/err_attrs.c\
 xml_utils/err_attr_invalid.c\
 xml_utils/err_attr_not_allowed.c\
 xml_utils/err_attr_undefined.c\
 xml_utils/err_elem_not_allowed.c\
 xml_utils/err_elem_redefined.c\
 xml_utils/err_elem_undefined.c\
 xml_utils/err_nested_elems.c\
 xml_utils/err_top_level.c\
 xml_utils/err_variables.c\
 xml_utils/leaf_elem.c\
 xml_utils/parse_date.c\
 xml_utils/parse_int.c\
 xml_utils/parse_int_attr.c\
 xml_utils/parse_ip.c\
 xml_utils/parse_ip_mask.c\
 xml_utils/unparse_date.c\
 xml_utils/unparse_ip.c\
 xml_utils/unparse_ip_mask.c\
 xml_utils/unparse_run_status.c\
 xml_utils/unparse_text.c\
 xml_utils/xml_err.c\
 xml_utils/xml_err_a.c

CFILES=\
 clean-users.c\
 collect-emails.c\
 compile.c\
 edit-userlist.c\
 ejudge-setup.c\
 master.c\
 register.c\
 run.c\
 serve.c\
 serve-cmd.c\
 serve-control.c\
 slice-userlist.c\
 super-serve.c\
 team.c\
 testinfo.c\
 userlist-server.c\
 users.c\
 unix/cpu.c\
 win32/cpu.c\
 unix/fileutl.c\
 win32/fileutl.c\
 unix/cr_serialize.c\
 win32/cr_serialize.c\
 unix/ej_process.c\
 win32/ej_process.c\
 unix/interrupt.c\
 win32/interrupt.c\
 unix/curtime.c\
 win32/curtime.c\
 unix/timestamp.c\
 win32/timestamp.c\
 unix/full_archive.c\
 win32/full_archive.c\
 ${COMMON_CFILES}\
 ${SERVE_CLNT_CFILES}\
 ${SUPER_CLNT_CFILES}\
 ${USERLIST_CLNT_CFILES}

HFILES=\
 archive_paths.h\
 base64.h\
 cgi.h\
 clarlog.h\
 client_actions.h\
 clntutil.h\
 compile_packet.h\
 compile_packet_priv.h\
 contests.h\
 copyright.h\
 cpu.h\
 cr_serialize.h\
 curtime.h\
 diff.h\
 digest_io.h\
 ej_limits.h\
 ej_process.h\
 ej_types.h\
 errlog.h\
 expat_iface.h\
 filehash.h\
 fileutl.h\
 filter_eval.h\
 filter_tree.h\
 full_archive.h\
 html.h\
 interrupt.h\
 job_packet.h\
 l10n.h\
 mischtml.h\
 misctext.h\
 ncurses_utils.h\
 opcaps.h\
 parsecfg.h\
 pathutl.h\
 prepare.h\
 prepare_dflt.h\
 prepare_vars.h\
 prepare_serve.h\
 printing.h\
 protocol.h\
 runlog.h\
 run_packet.h\
 run_packet_priv.h\
 serve_clnt.h\
 settings.h\
 sformat.h\
 super_actions.h\
 super_clnt.h\
 super_html.h\
 super_proto.h\
 super-serve.h\
 sha.h\
 teamdb.h\
 team_extra.h\
 testinfo.h\
 testing_report_xml.h\
 tex_dom.h\
 timestamp.h\
 tsc.h\
 userlist.h\
 userlist_cfg.h\
 userlist_clnt.h\
 varsubst.h\
 vcs.h\
 version.h\
 unix/unix_fileutl.h\
 userlist_clnt/private.h\
 xml_utils.h

OTHERFILES=\
 filter_expr.y\
 filter_scan.lex\
 NEWS.RUS\
 NEWS
