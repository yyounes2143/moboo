package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import androidx.annotation.Nullable;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.Constants;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.text.Typography;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfbu {
    @Nullable
    public final zzbxs zzA;
    public final String zzB;
    public final JSONObject zzC;
    public final JSONObject zzD;
    public final String zzE;
    public final String zzF;
    public final String zzG;
    public final String zzH;
    public final String zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final int zzQ;
    public final int zzR;
    public final boolean zzS;
    public final boolean zzT;
    public final String zzU;
    public final zzfcs zzV;
    public final boolean zzW;
    public final boolean zzX;
    public final int zzY;
    public final String zzZ;
    public final List zza;
    public final List zzaA;
    public final boolean zzaB;
    public final int zzaa;
    public final String zzab;
    public final boolean zzac;
    @Nullable
    public final zzbtr zzad;
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzt zzae;
    public final String zzaf;
    public final boolean zzag;
    public final JSONObject zzah;
    public final boolean zzai;
    public final JSONObject zzaj;
    public final boolean zzak;
    @Nullable
    public final String zzal;
    public final boolean zzam;
    public final String zzan;
    public final String zzao;
    public final String zzap;
    public final boolean zzaq;
    public final boolean zzar;
    public final int zzas;
    public final String zzat;
    public final List zzau;
    public final boolean zzav;
    public final Map zzaw;
    @Nullable
    public final com.google.android.gms.ads.internal.util.client.zzv zzax;
    @Nullable
    public final com.google.android.gms.ads.internal.util.client.zzw zzay;
    public final double zzaz;
    public final int zzb;
    public final List zzc;
    public final List zzd;
    public final int zze;
    public final List zzf;
    public final List zzg;
    public final List zzh;
    public final List zzi;
    public final String zzj;
    public final String zzk;
    @Nullable
    public final zzbwj zzl;
    public final List zzm;
    public final List zzn;
    public final List zzo;
    public final List zzp;
    public final int zzq;
    public final List zzr;
    @Nullable
    public final zzfbz zzs;
    public final List zzt;
    public final List zzu;
    public final JSONObject zzv;
    public final String zzw;
    public final String zzx;
    public final String zzy;
    public final String zzz;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v277, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v284, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r9v297, types: [java.util.List] */
    public zzfbu(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        List list;
        List list2;
        char c;
        List list3 = Collections.EMPTY_LIST;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        zzfyc.zzn();
        zzfyc zzn = zzfyc.zzn();
        HashMap hashMap = new HashMap();
        zzfyc zzn2 = zzfyc.zzn();
        jsonReader.beginObject();
        List list4 = list3;
        List list5 = list4;
        List list6 = list5;
        List list7 = list6;
        JSONObject jSONObject7 = jSONObject;
        JSONObject jSONObject8 = jSONObject2;
        JSONObject jSONObject9 = jSONObject3;
        JSONObject jSONObject10 = jSONObject4;
        JSONObject jSONObject11 = jSONObject5;
        JSONObject jSONObject12 = jSONObject6;
        zzfyc zzfycVar = zzn;
        HashMap hashMap2 = hashMap;
        zzfyc zzfycVar2 = zzn2;
        double d = 0.0d;
        zzbxs zzbxsVar = null;
        zzbtr zzbtrVar = null;
        com.google.android.gms.ads.internal.client.zzt zztVar = null;
        String str = null;
        com.google.android.gms.ads.internal.util.client.zzv zzvVar = null;
        com.google.android.gms.ads.internal.util.client.zzw zzwVar = null;
        zzfbz zzfbzVar = null;
        String str2 = "";
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        String str11 = str10;
        String str12 = str11;
        String str13 = str12;
        String str14 = str13;
        String str15 = str14;
        String str16 = str15;
        String str17 = str16;
        String str18 = str17;
        String str19 = str18;
        String str20 = str19;
        String str21 = str20;
        int i = -1;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i5 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        int i6 = 0;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        int i7 = 0;
        boolean z19 = false;
        boolean z20 = false;
        List list8 = list7;
        List list9 = list8;
        List list10 = list9;
        List list11 = list10;
        List list12 = list11;
        List list13 = list12;
        List list14 = list13;
        List list15 = list14;
        List list16 = list15;
        zzbwj zzbwjVar = null;
        int i8 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str22 = nextName == null ? str3 : nextName;
            switch (str22.hashCode()) {
                case -2138196627:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad_source_instance_name")) {
                        c = ';';
                        break;
                    }
                    c = 65535;
                    break;
                case -1980587809:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("debug_signals")) {
                        c = 28;
                        break;
                    }
                    c = 65535;
                    break;
                case -1965512151:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("omid_settings")) {
                        c = ')';
                        break;
                    }
                    c = 65535;
                    break;
                case -1964744830:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("offline_ad_config")) {
                        c = 'O';
                        break;
                    }
                    c = 65535;
                    break;
                case -1871425831:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("recursive_server_response_data")) {
                        c = 'E';
                        break;
                    }
                    c = 65535;
                    break;
                case -1843156475:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("is_consent")) {
                        c = 'G';
                        break;
                    }
                    c = 65535;
                    break;
                case -1840512279:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("presentation_urls")) {
                        c = 'P';
                        break;
                    }
                    c = 65535;
                    break;
                case -1828733410:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("network_ping_config")) {
                        c = 'N';
                        break;
                    }
                    c = 65535;
                    break;
                case -1812055556:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("play_prewarm_options")) {
                        c = '1';
                        break;
                    }
                    c = 65535;
                    break;
                case -1785028569:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("parallel_key")) {
                        c = 'I';
                        break;
                    }
                    c = 65535;
                    break;
                case -1776946669:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad_source_name")) {
                        c = '9';
                        break;
                    }
                    c = 65535;
                    break;
                case -1662989631:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("is_interscroller")) {
                        c = '5';
                        break;
                    }
                    c = 65535;
                    break;
                case -1620470467:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("backend_query_id")) {
                        c = '/';
                        break;
                    }
                    c = 65535;
                    break;
                case -1550155393:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("nofill_urls")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case -1440104884:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("is_custom_close_blocked")) {
                        c = '#';
                        break;
                    }
                    c = 65535;
                    break;
                case -1439500848:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("orientation")) {
                        c = '%';
                        break;
                    }
                    c = 65535;
                    break;
                case -1428969291:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("enable_omid")) {
                        c = '\'';
                        break;
                    }
                    c = 65535;
                    break;
                case -1406227629:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("buffer_click_url_as_ready_to_ping")) {
                        c = 'C';
                        break;
                    }
                    c = 65535;
                    break;
                case -1403779768:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("showable_impression_type")) {
                        c = AbstractJsonLexerKt.COMMA;
                        break;
                    }
                    c = 65535;
                    break;
                case -1375413093:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad_cover")) {
                        c = '6';
                        break;
                    }
                    c = 65535;
                    break;
                case -1360811658:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad_sizes")) {
                        c = 19;
                        break;
                    }
                    c = 65535;
                    break;
                case -1306015996:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("adapters")) {
                        c = 20;
                        break;
                    }
                    c = 65535;
                    break;
                case -1303332046:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("test_mode_enabled")) {
                        c = '\"';
                        break;
                    }
                    c = 65535;
                    break;
                case -1289032093:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("extras")) {
                        c = 29;
                        break;
                    }
                    c = 65535;
                    break;
                case -1240082064:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad_event_value")) {
                        c = '3';
                        break;
                    }
                    c = 65535;
                    break;
                case -1234181075:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("allow_pub_rendered_attribution")) {
                        c = 30;
                        break;
                    }
                    c = 65535;
                    break;
                case -1168140544:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("presentation_error_urls")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case -1152230954:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad_type")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -1146534047:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("is_scroll_aware")) {
                        c = '+';
                        break;
                    }
                    c = 65535;
                    break;
                case -1115838944:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("fill_urls")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case -1081936678:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("allocation_id")) {
                        c = 21;
                        break;
                    }
                    c = 65535;
                    break;
                case -1078050970:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("video_complete_urls")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case -1051269058:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("active_view")) {
                        c = 25;
                        break;
                    }
                    c = 65535;
                    break;
                case -982608540:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("valid_from_timestamp")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case -972056451:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad_source_instance_id")) {
                        c = Typography.less;
                        break;
                    }
                    c = 65535;
                    break;
                case -776859333:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("click_urls")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -570101180:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("late_load_urls")) {
                        c = 'J';
                        break;
                    }
                    c = 65535;
                    break;
                case -544216775:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("safe_browsing")) {
                        c = 26;
                        break;
                    }
                    c = 65535;
                    break;
                case -437057161:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("imp_urls")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -404433734:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("rtb_native_required_assets")) {
                        c = Typography.greater;
                        break;
                    }
                    c = 65535;
                    break;
                case -404326515:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("render_timeout_ms")) {
                        c = Typography.amp;
                        break;
                    }
                    c = 65535;
                    break;
                case -397704715:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad_close_time_ms")) {
                        c = '-';
                        break;
                    }
                    c = 65535;
                    break;
                case -388807511:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("content_url")) {
                        c = '@';
                        break;
                    }
                    c = 65535;
                    break;
                case -369773488:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("is_close_button_enabled")) {
                        c = '2';
                        break;
                    }
                    c = 65535;
                    break;
                case -213449460:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("force_disable_hardware_acceleration")) {
                        c = 'A';
                        break;
                    }
                    c = 65535;
                    break;
                case -213424028:
                    list = list15;
                    list2 = list16;
                    if (str22.equals(MBridgeConstans.EXTRA_KEY_WM)) {
                        c = '.';
                        break;
                    }
                    c = 65535;
                    break;
                case -180214626:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("native_required_asset_viewability")) {
                        c = '?';
                        break;
                    }
                    c = 65535;
                    break;
                case -154616268:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("is_offline_ad")) {
                        c = '=';
                        break;
                    }
                    c = 65535;
                    break;
                case -29338502:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("allow_custom_click_gesture")) {
                        c = ' ';
                        break;
                    }
                    c = 65535;
                    break;
                case 3107:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad")) {
                        c = 18;
                        break;
                    }
                    c = 65535;
                    break;
                case 3355:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("id")) {
                        c = 23;
                        break;
                    }
                    c = 65535;
                    break;
                case 3076010:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("data")) {
                        c = 22;
                        break;
                    }
                    c = 65535;
                    break;
                case 37109963:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("request_id")) {
                        c = 'D';
                        break;
                    }
                    c = 65535;
                    break;
                case 63195984:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("render_test_label")) {
                        c = '!';
                        break;
                    }
                    c = 65535;
                    break;
                case 107433883:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("qdata")) {
                        c = 24;
                        break;
                    }
                    c = 65535;
                    break;
                case 230323073:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad_load_urls")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 418392395:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("is_closable_area_disabled")) {
                        c = Typography.dollar;
                        break;
                    }
                    c = 65535;
                    break;
                case 542250332:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("consent_form_action_identifier")) {
                        c = 'H';
                        break;
                    }
                    c = 65535;
                    break;
                case 549176928:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("presentation_error_timeout_ms")) {
                        c = 16;
                        break;
                    }
                    c = 65535;
                    break;
                case 597473788:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("debug_dialog_string")) {
                        c = 27;
                        break;
                    }
                    c = 65535;
                    break;
                case 754887508:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("container_sizes")) {
                        c = 17;
                        break;
                    }
                    c = 65535;
                    break;
                case 791122864:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("impression_type")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 805095541:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("analytics_event_name_to_parameters_map")) {
                        c = 'M';
                        break;
                    }
                    c = 65535;
                    break;
                case 1010584092:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("transaction_id")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 1100650276:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("rewards")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case 1141602460:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("adapter_response_info_key")) {
                        c = '8';
                        break;
                    }
                    c = 65535;
                    break;
                case 1186014765:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("cache_hit_urls")) {
                        c = 'B';
                        break;
                    }
                    c = 65535;
                    break;
                case 1303622534:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("preload_sort_value")) {
                        c = 'L';
                        break;
                    }
                    c = 65535;
                    break;
                case 1321720943:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("allow_pub_owned_ad_view")) {
                        c = 31;
                        break;
                    }
                    c = 65535;
                    break;
                case 1422388341:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("is_collapsible")) {
                        c = 'F';
                        break;
                    }
                    c = 65535;
                    break;
                case 1437255331:
                    list = list15;
                    list2 = list16;
                    if (str22.equals(CampaignEx.JSON_KEY_AD_SOURCE_ID)) {
                        c = AbstractJsonLexerKt.COLON;
                        break;
                    }
                    c = 65535;
                    break;
                case 1637553475:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("bid_response")) {
                        c = '(';
                        break;
                    }
                    c = 65535;
                    break;
                case 1638957285:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("video_start_urls")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1686319423:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("ad_network_class_name")) {
                        c = '7';
                        break;
                    }
                    c = 65535;
                    break;
                case 1688341040:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("video_reward_urls")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case 1799285870:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("use_third_party_container_height")) {
                        c = '0';
                        break;
                    }
                    c = 65535;
                    break;
                case 1839650832:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("renderers")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1875425491:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("is_analytics_logging_enabled")) {
                        c = '*';
                        break;
                    }
                    c = 65535;
                    break;
                case 2068142375:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("rule_line_external_id")) {
                        c = '4';
                        break;
                    }
                    c = 65535;
                    break;
                case 2072888499:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("manual_tracking_urls")) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                case 2075506442:
                    list = list15;
                    list2 = list16;
                    if (str22.equals("render_serially")) {
                        c = 'K';
                        break;
                    }
                    c = 65535;
                    break;
                case 2117205836:
                    list2 = list16;
                    list = list15;
                    if (str22.equals("flow_control")) {
                        c = 'Q';
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    list = list15;
                    list2 = list16;
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    list3 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 1:
                    i8 = zzc(jsonReader.nextString());
                    break;
                case 2:
                    list8 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 3:
                    list9 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 4:
                    list10 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 5:
                    i3 = zze(jsonReader.nextInt());
                    break;
                case 6:
                    list11 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 7:
                    list12 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case '\b':
                    list13 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case '\t':
                    str3 = jsonReader.nextString();
                    break;
                case '\n':
                    str2 = jsonReader.nextString();
                    break;
                case 11:
                    zzbwjVar = zzbwj.zza(com.google.android.gms.ads.internal.util.zzbs.zzf(jsonReader));
                    break;
                case '\f':
                    list14 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case '\r':
                    list15 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    continue;
                    list16 = list2;
                case 14:
                    list2 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 15:
                    list7 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 16:
                    i4 = jsonReader.nextInt();
                    break;
                case 17:
                    list6 = zzfbv.zza(jsonReader);
                    break;
                case 18:
                    zzfbzVar = new zzfbz(jsonReader);
                    break;
                case 19:
                    list4 = zzfbv.zza(jsonReader);
                    break;
                case 20:
                    list5 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 21:
                    str4 = jsonReader.nextString();
                    break;
                case 22:
                    jSONObject7 = com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader);
                    break;
                case 23:
                    str5 = jsonReader.nextString();
                    break;
                case 24:
                    str6 = jsonReader.nextString();
                    break;
                case 25:
                    str7 = com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader).toString();
                    break;
                case 26:
                    zzbxsVar = zzbxs.zza(com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader));
                    break;
                case 27:
                    str8 = jsonReader.nextString();
                    break;
                case 28:
                    jSONObject8 = com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader);
                    break;
                case 29:
                    jSONObject9 = com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader);
                    break;
                case 30:
                    z = jsonReader.nextBoolean();
                    break;
                case 31:
                    z2 = jsonReader.nextBoolean();
                    break;
                case ' ':
                    z3 = jsonReader.nextBoolean();
                    break;
                case '!':
                    z4 = jsonReader.nextBoolean();
                    break;
                case '\"':
                    z5 = jsonReader.nextBoolean();
                    break;
                case '#':
                    z6 = jsonReader.nextBoolean();
                    break;
                case '$':
                    z7 = jsonReader.nextBoolean();
                    break;
                case '%':
                    i = zzd(jsonReader.nextString());
                    break;
                case '&':
                    i5 = jsonReader.nextInt();
                    break;
                case '\'':
                    z8 = jsonReader.nextBoolean();
                    break;
                case '(':
                    str9 = jsonReader.nextString();
                    break;
                case ')':
                    jSONObject10 = com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader);
                    break;
                case '*':
                    z9 = jsonReader.nextBoolean();
                    break;
                case '+':
                    z10 = jsonReader.nextBoolean();
                    break;
                case ',':
                    i6 = jsonReader.nextInt();
                    break;
                case '-':
                    i2 = jsonReader.nextInt();
                    break;
                case '.':
                    str10 = jsonReader.nextString();
                    break;
                case '/':
                    str11 = jsonReader.nextString();
                    break;
                case '0':
                    z11 = jsonReader.nextBoolean();
                    break;
                case '1':
                    zzbtrVar = zzbtr.zza(com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader));
                    break;
                case '2':
                    jsonReader.nextBoolean();
                    break;
                case '3':
                    zztVar = com.google.android.gms.ads.internal.client.zzt.zza(com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader));
                    break;
                case '4':
                    str12 = jsonReader.nextString();
                    break;
                case '5':
                    z12 = jsonReader.nextBoolean();
                    break;
                case '6':
                    jSONObject11 = com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader);
                    break;
                case '7':
                    str13 = jsonReader.nextString();
                    break;
                case '8':
                    str20 = jsonReader.nextString();
                    break;
                case '9':
                    str14 = jsonReader.nextString();
                    break;
                case ':':
                    str15 = jsonReader.nextString();
                    break;
                case ';':
                    str16 = jsonReader.nextString();
                    break;
                case '<':
                    str17 = jsonReader.nextString();
                    break;
                case '=':
                    z13 = jsonReader.nextBoolean();
                    break;
                case '>':
                    jSONObject12 = com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader);
                    break;
                case '?':
                    z14 = jsonReader.nextBoolean();
                    break;
                case '@':
                    str = jsonReader.nextString();
                    break;
                case 'A':
                    z15 = jsonReader.nextBoolean();
                    break;
                case 'B':
                    com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 'C':
                    z16 = jsonReader.nextBoolean();
                    break;
                case 'D':
                    str18 = jsonReader.nextString();
                    break;
                case 'E':
                    str19 = jsonReader.nextString();
                    break;
                case 'F':
                    z17 = jsonReader.nextBoolean();
                    break;
                case 'G':
                    z18 = jsonReader.nextBoolean();
                    break;
                case 'H':
                    i7 = jsonReader.nextInt();
                    break;
                case 'I':
                    str21 = jsonReader.nextString();
                    break;
                case 'J':
                    zzfycVar = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 'K':
                    z19 = jsonReader.nextBoolean();
                    break;
                case 'L':
                    d = jsonReader.nextDouble();
                    list15 = list;
                    continue;
                    list16 = list2;
                case 'M':
                    if (((Boolean) zzbcv.zzaq.zzj()).booleanValue()) {
                        hashMap2 = com.google.android.gms.ads.internal.util.zzbs.zze(jsonReader);
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                case 'N':
                    if (((Boolean) zzbcv.zziP.zzj()).booleanValue()) {
                        zzvVar = com.google.android.gms.ads.internal.util.client.zzv.zza(com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader));
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                case 'O':
                    if (((Boolean) zzbcv.zziR.zzj()).booleanValue()) {
                        zzwVar = com.google.android.gms.ads.internal.util.client.zzw.zzd(com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader));
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                case 'P':
                    zzfycVar2 = com.google.android.gms.ads.internal.util.zzbs.zzd(jsonReader);
                    break;
                case 'Q':
                    z20 = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
            list15 = list;
            list16 = list2;
        }
        jsonReader.endObject();
        this.zza = list3;
        this.zzb = i8;
        this.zzc = list8;
        this.zzd = list9;
        this.zzf = list10;
        this.zze = i3;
        this.zzg = list11;
        this.zzh = list12;
        this.zzi = list13;
        this.zzj = str3;
        this.zzk = str2;
        this.zzl = zzbwjVar;
        this.zzm = list14;
        this.zzn = list15;
        this.zzo = list16;
        this.zzp = list7;
        this.zzq = i4;
        this.zzr = list6;
        this.zzs = zzfbzVar;
        this.zzt = list5;
        this.zzu = list4;
        this.zzw = str4;
        this.zzv = jSONObject7;
        this.zzx = str5;
        this.zzy = str6;
        this.zzz = str7;
        this.zzA = zzbxsVar;
        this.zzB = str8;
        this.zzC = jSONObject8;
        this.zzD = jSONObject9;
        this.zzJ = z;
        this.zzK = z2;
        this.zzL = z3;
        this.zzM = z4;
        this.zzN = z5;
        this.zzO = z6;
        this.zzP = z7;
        this.zzQ = i;
        this.zzR = i5;
        this.zzT = z8;
        this.zzU = str9;
        this.zzV = new zzfcs(jSONObject10);
        this.zzW = z9;
        this.zzX = z10;
        this.zzY = i6;
        this.zzZ = str10;
        this.zzaa = i2;
        this.zzab = str11;
        this.zzac = z11;
        this.zzad = zzbtrVar;
        this.zzae = zztVar;
        this.zzaf = str12;
        this.zzag = z12;
        this.zzah = jSONObject11;
        this.zzE = str13;
        this.zzF = str14;
        this.zzG = str15;
        this.zzH = str16;
        this.zzI = str17;
        this.zzai = z13;
        this.zzaj = jSONObject12;
        this.zzak = z14;
        this.zzal = str;
        this.zzam = z15;
        this.zzS = z16;
        this.zzan = str18;
        this.zzao = str19;
        this.zzap = str20;
        this.zzaq = z17;
        this.zzar = z18;
        this.zzas = i7;
        this.zzau = zzfycVar;
        this.zzat = str21;
        this.zzav = z19;
        this.zzaw = hashMap2;
        this.zzax = zzvVar;
        this.zzay = zzwVar;
        this.zzaz = d;
        this.zzaA = zzfycVar2;
        this.zzaB = z20;
    }

    public static String zza(int i) {
        switch (i) {
            case 1:
                return "BANNER";
            case 2:
                return "INTERSTITIAL";
            case 3:
                return "NATIVE_EXPRESS";
            case 4:
                return "NATIVE";
            case 5:
                return "REWARDED";
            case 6:
                return "APP_OPEN_AD";
            case 7:
                return "REWARDED_INTERSTITIAL";
            default:
                return "UNKNOWN";
        }
    }

    private static int zzc(String str) {
        if ("banner".equals(str)) {
            return 1;
        }
        if (Constants.PLACEMENT_TYPE_INTERSTITIAL.equals(str)) {
            return 2;
        }
        if ("native_express".equals(str)) {
            return 3;
        }
        if ("native".equals(str)) {
            return 4;
        }
        if (Constants.PLACEMENT_TYPE_REWARDED.equals(str)) {
            return 5;
        }
        if ("app_open_ad".equals(str)) {
            return 6;
        }
        if ("rewarded_interstitial".equals(str)) {
            return 7;
        }
        return 0;
    }

    private static int zzd(String str) {
        if ("landscape".equalsIgnoreCase(str)) {
            return 6;
        }
        if ("portrait".equalsIgnoreCase(str)) {
            return 7;
        }
        return -1;
    }

    private static int zze(int i) {
        if (i != 0 && i != 1 && i != 3 && i != 4) {
            return 0;
        }
        return i;
    }

    public final boolean zzb() {
        if (!this.zzai && this.zzay == null) {
            return false;
        }
        return true;
    }
}
