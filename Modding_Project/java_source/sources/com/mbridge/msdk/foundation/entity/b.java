package com.mbridge.msdk.foundation.entity;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.e0;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.out.Frame;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class b {
    public static final String JSON_KEY_ADS = "ads";
    public static final String JSON_KEY_AD_HTML = "cam_html";
    public static final String JSON_KEY_AD_TYPE = "ad_type";
    public static final String JSON_KEY_AD_ZIP = "cam_tpl_url";
    public static final String JSON_KEY_BANNER_HTML = "cam_html";
    public static final String JSON_KEY_BANNER_URL = "cam_tpl_url";
    public static final String JSON_KEY_CSP = "csp";
    public static final String JSON_KEY_C_I = "c_i";
    public static final String JSON_KEY_DO = "do";
    public static final String JSON_KEY_ENCRYPT_PRICE = "encrypt_p";
    public static final String JSON_KEY_END_SCREEN_URL = "end_screen_url";
    public static final String JSON_KEY_FRAME_ADS = "frames";
    public static final String JSON_KEY_HTML_URL = "html_url";
    public static final String JSON_KEY_IA_EXT1 = "ia_all_ext1";
    public static final String JSON_KEY_IA_EXT2 = "ia_all_ext2";
    public static final String JSON_KEY_IA_ICON = "ia_icon";
    public static final String JSON_KEY_IA_ORI = "ia_ori";
    public static final String JSON_KEY_IA_RST = "ia_rst";
    public static final String JSON_KEY_IA_URL = "ia_url";
    public static final String JSON_KEY_JM_DO = "jm_do";
    public static final String JSON_KEY_MOF_TEMPLATE_URL = "mof_template_url";
    public static final String JSON_KEY_MOF_TPLID = "mof_tplid";
    public static final String JSON_KEY_NSCPT = "nscpt";
    public static final String JSON_KEY_ONLY_IMPRESSION_URL = "only_impression_url";
    public static final String JSON_KEY_PARENT_SESSION_ID = "parent_session_id";
    public static final String JSON_KEY_PV_URLS = "pv_urls";
    public static final String JSON_KEY_REPLACE_TMP = "replace_tmp";
    public static final String JSON_KEY_REQ_EXT_DATA = "req_ext_data";
    public static final String JSON_KEY_RKS = "rks";
    public static final String JSON_KEY_SECOND_REQUEST_INDEX = "r_index";
    public static final String JSON_KEY_SECOND_SHOW_INDEX = "s_show_index";
    public static final String JSON_KEY_SESSION_ID = "a";
    public static final String JSON_KEY_SH = "sh";
    public static final String JSON_KEY_TEMPLATE = "template";
    public static final String JSON_KEY_TK_TCP_PORT = "tk_tcp_port";
    public static final String JSON_KEY_TOKEN_RULE = "token_r";
    public static final String JSON_KEY_UNIT_SIZE = "unit_size";
    public static final String JSON_KEY_VCN = "vcn";
    public static final String KEY_IRLFA = "irlfa";
    private static final String TAG = "b";
    private String adHtml;
    private int adType;
    private String adZip;
    public ArrayList<CampaignEx> ads;
    private String bannerHtml;
    private String bannerUrl;
    private String csp;
    private String domain;
    private double ecppv;
    private HashMap<String, String> epMap;
    private String htmlUrl;
    private String ia_all_ext1;
    private String ia_all_ext2;
    private String ia_icon;
    private int ia_ori;
    private int ia_rst;
    private String ia_url;
    private int jmDo;
    private List<Frame> listFrames;
    private String localRequestId;
    private com.mbridge.msdk.foundation.same.report.metrics.c metricsData;
    private String onlyImpressionUrl;
    private String parentSessionId;
    private String requestId;
    private HashMap<String, String> rks;
    private String sessionId;
    private String sh;
    private int template;
    private int tokenRule;
    private String unitSize;
    private int vcn;
    protected StringBuffer cParams = new StringBuffer();
    private String encryptPrice = "";
    private String msg = "";
    private int activitySwitch = 1;
    private int secondRequestIndex = 0;
    private int secondShowIndex = 0;

    private static void getSysIDAndBKUPID(JSONObject jSONObject) {
        FastKV fastKV = null;
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            try {
                fastKV = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), i0.a("H+tU+FeXHM==")).build();
            } catch (Exception unused) {
            }
        }
        if (fastKV != null) {
            try {
                Context d = com.mbridge.msdk.foundation.controller.c.m().d();
                if (jSONObject != null && d != null) {
                    String optString = jSONObject.optString("b");
                    if (!TextUtils.isEmpty(optString) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, optString)) {
                        com.mbridge.msdk.foundation.same.a.V = optString;
                        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("b", com.mbridge.msdk.foundation.same.a.V);
                        try {
                            fastKV.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                        } catch (Exception unused2) {
                        }
                    }
                    String optString2 = jSONObject.optString("c");
                    if (!TextUtils.isEmpty(optString2) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.g, optString2)) {
                        com.mbridge.msdk.foundation.same.a.g = optString2;
                        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.g);
                        try {
                            fastKV.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.g);
                            return;
                        } catch (Exception unused3) {
                            return;
                        }
                    }
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        try {
            Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (jSONObject != null && d2 != null) {
                String optString3 = jSONObject.optString("b");
                if (!TextUtils.isEmpty(optString3) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, optString3)) {
                    com.mbridge.msdk.foundation.same.a.V = optString3;
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("b", com.mbridge.msdk.foundation.same.a.V);
                    SharedPreferences sharedPreferences = d2.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
                    if (sharedPreferences != null) {
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        edit.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                        edit.apply();
                    }
                }
                String optString4 = jSONObject.optString("c");
                if (!TextUtils.isEmpty(optString4) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.g, optString4)) {
                    com.mbridge.msdk.foundation.same.a.g = optString4;
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.g);
                    SharedPreferences sharedPreferences2 = d2.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
                    if (sharedPreferences2 != null) {
                        SharedPreferences.Editor edit2 = sharedPreferences2.edit();
                        edit2.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.g);
                        edit2.apply();
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static CampaignUnit parseCampaignUnit(JSONObject jSONObject) {
        return parseCampaignUnit(jSONObject, "");
    }

    public static CampaignUnit parseV5CampaignUnit(JSONObject jSONObject) {
        return parseV5CampaignUnit(jSONObject, "");
    }

    public abstract String assembCParams();

    public int getActivitySwitch() {
        return this.activitySwitch;
    }

    public String getAdHtml() {
        return this.adHtml;
    }

    public int getAdType() {
        return this.adType;
    }

    public String getAdZip() {
        return this.adZip;
    }

    public ArrayList<CampaignEx> getAds() {
        return this.ads;
    }

    public String getBannerHtml() {
        return this.bannerHtml;
    }

    public String getBannerUrl() {
        return this.bannerUrl;
    }

    public String getCsp() {
        return this.csp;
    }

    public String getDomain() {
        return this.domain;
    }

    public double getEcppv() {
        return this.ecppv;
    }

    public String getEncryptPrice() {
        return this.encryptPrice;
    }

    public HashMap<String, String> getEpMap() {
        return this.epMap;
    }

    public String getHtmlUrl() {
        return this.htmlUrl;
    }

    public String getIa_all_ext1() {
        return this.ia_all_ext1;
    }

    public String getIa_all_ext2() {
        return this.ia_all_ext2;
    }

    public String getIa_icon() {
        return this.ia_icon;
    }

    public int getIa_ori() {
        return this.ia_ori;
    }

    public int getIa_rst() {
        return this.ia_rst;
    }

    public String getIa_url() {
        return this.ia_url;
    }

    public int getJmDo() {
        return this.jmDo;
    }

    public List<Frame> getListFrames() {
        return this.listFrames;
    }

    public String getLocalRequestId() {
        return this.localRequestId;
    }

    public com.mbridge.msdk.foundation.same.report.metrics.c getMetricsData() {
        return this.metricsData;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getOnlyImpressionUrl() {
        return this.onlyImpressionUrl;
    }

    public String getParentSessionId() {
        return this.parentSessionId;
    }

    public String getRequestId() {
        try {
            if (!TextUtils.isEmpty(this.requestId)) {
                return this.requestId;
            }
            if (!TextUtils.isEmpty(this.onlyImpressionUrl)) {
                Uri parse = Uri.parse(this.onlyImpressionUrl);
                if (parse != null) {
                    this.requestId = parse.getQueryParameter(CampaignEx.JSON_KEY_AD_K);
                }
                return this.requestId;
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    public HashMap<String, String> getRks() {
        return this.rks;
    }

    public int getSecondRequestIndex() {
        return this.secondRequestIndex;
    }

    public int getSecondShowIndex() {
        return this.secondShowIndex;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public String getSh() {
        return this.sh;
    }

    public int getTemplate() {
        return this.template;
    }

    public int getTokenRule() {
        int i = this.tokenRule;
        if (i == 1) {
            return i;
        }
        return 0;
    }

    public String getUnitSize() {
        return this.unitSize;
    }

    public int getVcn() {
        int i = this.vcn;
        if (i <= 1) {
            return 1;
        }
        return i;
    }

    public Object nullToEmpty(Object obj) {
        if (obj == null) {
            return "";
        }
        return obj;
    }

    public void setActivitySwitch(int i) {
        this.activitySwitch = i;
    }

    public void setAdHtml(String str) {
        this.adHtml = str;
    }

    public void setAdType(int i) {
        this.adType = i;
    }

    public void setAdZip(String str) {
        this.adZip = str;
    }

    public void setAds(ArrayList<CampaignEx> arrayList) {
        this.ads = arrayList;
    }

    public void setBannerHtml(String str) {
        this.bannerHtml = str;
    }

    public void setBannerUrl(String str) {
        this.bannerUrl = str;
    }

    public void setCsp(String str) {
        this.csp = str;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public void setEcppv(double d) {
        this.ecppv = d;
    }

    public void setEncryptPrice(String str) {
        this.encryptPrice = str;
    }

    public void setEpMap(HashMap<String, String> hashMap) {
        this.epMap = hashMap;
    }

    public void setHtmlUrl(String str) {
        this.htmlUrl = str;
    }

    public void setIa_all_ext1(String str) {
        this.ia_all_ext1 = str;
    }

    public void setIa_all_ext2(String str) {
        this.ia_all_ext2 = str;
    }

    public void setIa_icon(String str) {
        this.ia_icon = str;
    }

    public void setIa_ori(int i) {
        this.ia_ori = i;
    }

    public void setIa_rst(int i) {
        this.ia_rst = i;
    }

    public void setIa_url(String str) {
        this.ia_url = str;
    }

    public void setJmDo(int i) {
        this.jmDo = i;
    }

    public void setListFrames(List<Frame> list) {
        this.listFrames = list;
    }

    public void setLocalRequestId(String str) {
        this.localRequestId = str;
        ArrayList<CampaignEx> ads = getAds();
        int size = ads.size();
        int i = 0;
        while (i < size) {
            CampaignEx campaignEx = ads.get(i);
            i++;
            campaignEx.setLocalRequestId(str);
        }
    }

    public void setMetricsData(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        this.metricsData = cVar;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setOnlyImpressionUrl(String str) {
        this.onlyImpressionUrl = str;
    }

    public void setParentSessionId(String str) {
        this.parentSessionId = str;
    }

    public void setRks(HashMap<String, String> hashMap) {
        this.rks = hashMap;
    }

    public void setSecondRequestIndex(int i) {
        this.secondRequestIndex = i;
    }

    public void setSecondShowIndex(int i) {
        this.secondShowIndex = i;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public void setSh(String str) {
        this.sh = str;
    }

    public void setTemplate(int i) {
        this.template = i;
    }

    public void setTokenRule(int i) {
        this.tokenRule = i;
    }

    public void setUnitSize(String str) {
        this.unitSize = str;
    }

    public void setVcn(int i) {
        this.vcn = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.Object, com.mbridge.msdk.foundation.entity.CampaignEx] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v36, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v37 */
    /* JADX WARN: Type inference failed for: r13v38 */
    /* JADX WARN: Type inference failed for: r13v39, types: [com.mbridge.msdk.foundation.entity.b] */
    /* JADX WARN: Type inference failed for: r13v43 */
    /* JADX WARN: Type inference failed for: r13v44, types: [com.mbridge.msdk.foundation.entity.b] */
    /* JADX WARN: Type inference failed for: r13v56 */
    /* JADX WARN: Type inference failed for: r13v57 */
    /* JADX WARN: Type inference failed for: r15v8, types: [com.mbridge.msdk.foundation.tools.e0] */
    public static CampaignUnit parseCampaignUnit(JSONObject jSONObject, String str) {
        ?? r13;
        int i;
        String str2;
        int i2;
        ArrayList arrayList;
        String str3;
        int i3;
        int i4;
        String str4 = JSON_KEY_ADS;
        String str5 = "ad_type";
        String str6 = JSON_KEY_PARENT_SESSION_ID;
        String str7 = "a";
        String str8 = CampaignEx.JSON_KEY_ECPPV;
        String str9 = JSON_KEY_ONLY_IMPRESSION_URL;
        String str10 = JSON_KEY_HTML_URL;
        if (jSONObject != null) {
            try {
                CampaignUnit campaignUnit = new CampaignUnit();
                try {
                    String optString = jSONObject.optString(JSON_KEY_RKS);
                    if (!TextUtils.isEmpty(optString)) {
                        JSONObject jSONObject2 = new JSONObject(optString);
                        Iterator<String> keys = jSONObject2.keys();
                        HashMap<String, String> hashMap = new HashMap<>();
                        while (keys != null && keys.hasNext()) {
                            String next = keys.next();
                            hashMap.put(next, jSONObject2.optString(next));
                        }
                        campaignUnit.setRks(hashMap);
                    }
                    if (!TextUtils.isEmpty(str)) {
                        HashMap<String, String> hashMap2 = new HashMap<>();
                        hashMap2.put("encrypt_p", "");
                        hashMap2.put(KEY_IRLFA, "");
                        campaignUnit.setEpMap(hashMap2);
                    }
                    JSONObject optJSONObject = jSONObject.optJSONObject(JSON_KEY_REQ_EXT_DATA);
                    int optInt = jSONObject.optInt(JSON_KEY_NSCPT, 1);
                    String optString2 = jSONObject.optString(JSON_KEY_MOF_TEMPLATE_URL, "");
                    int optInt2 = jSONObject.optInt(JSON_KEY_MOF_TPLID, 0);
                    String jSONObject3 = optJSONObject != null ? optJSONObject.toString() : "";
                    new JSONArray();
                    JSONArray optJSONArray = jSONObject.optJSONArray("pv_urls");
                    if (optJSONArray == null || optJSONArray.length() <= 0) {
                        i = optInt2;
                        str2 = "";
                        i2 = optInt;
                        arrayList = null;
                    } else {
                        i2 = optInt;
                        i = optInt2;
                        ArrayList arrayList2 = new ArrayList(optJSONArray.length());
                        str2 = "";
                        for (int i5 = 0; i5 < optJSONArray.length(); i5++) {
                            arrayList2.add(optJSONArray.getString(i5));
                        }
                        arrayList = arrayList2;
                    }
                    com.mbridge.msdk.foundation.db.middle.b.a().a(jSONObject.optJSONObject(JSON_KEY_REPLACE_TMP), true);
                    getSysIDAndBKUPID(jSONObject);
                    campaignUnit.setSessionId(jSONObject.optString("a"));
                    campaignUnit.setParentSessionId(jSONObject.optString(JSON_KEY_PARENT_SESSION_ID));
                    campaignUnit.setAdType(jSONObject.optInt("ad_type"));
                    campaignUnit.setUnitSize(jSONObject.optString(JSON_KEY_UNIT_SIZE));
                    campaignUnit.setHtmlUrl(jSONObject.optString(JSON_KEY_HTML_URL));
                    campaignUnit.setOnlyImpressionUrl(jSONObject.optString(JSON_KEY_ONLY_IMPRESSION_URL));
                    campaignUnit.setActivitySwitch(jSONObject.optInt(CampaignEx.KEY_ACTIVITY_CHECK_SWITCH));
                    campaignUnit.setEcppv(jSONObject.optDouble(CampaignEx.JSON_KEY_ECPPV));
                    campaignUnit.setTemplate(jSONObject.optInt("template"));
                    campaignUnit.setJmDo(jSONObject.optInt(JSON_KEY_JM_DO));
                    campaignUnit.setIa_icon(jSONObject.optString("ia_icon"));
                    campaignUnit.setIa_rst(jSONObject.optInt("ia_rst"));
                    campaignUnit.setIa_url(jSONObject.optString("ia_url"));
                    campaignUnit.setIa_ori(jSONObject.optInt("ia_ori"));
                    campaignUnit.setIa_all_ext1(jSONObject.optString(JSON_KEY_IA_EXT1));
                    campaignUnit.setIa_all_ext2(jSONObject.optString(JSON_KEY_IA_EXT2));
                    campaignUnit.setVcn(jSONObject.optInt("vcn"));
                    campaignUnit.setTokenRule(jSONObject.optInt("token_r"));
                    campaignUnit.setEncryptPrice(jSONObject.optString("encrypt_p"));
                    campaignUnit.setSecondRequestIndex(jSONObject.optInt("r_index", 0));
                    campaignUnit.setSecondShowIndex(jSONObject.optInt("s_show_index", 0));
                    JSONArray optJSONArray2 = jSONObject.optJSONArray(JSON_KEY_ADS);
                    JSONArray optJSONArray3 = jSONObject.optJSONArray(JSON_KEY_FRAME_ADS);
                    r13 = jSONObject.optString(JSON_KEY_C_I, str2);
                    e0.a().a(r13);
                    String str11 = "web env is not support";
                    String str12 = JSON_KEY_END_SCREEN_URL;
                    try {
                        try {
                            if (optJSONArray3 != null && optJSONArray3.length() > 0) {
                                ArrayList arrayList3 = new ArrayList();
                                String str13 = "template";
                                CampaignUnit campaignUnit2 = campaignUnit;
                                int i6 = 0;
                                String str14 = r13;
                                while (i6 < optJSONArray3.length()) {
                                    try {
                                        JSONObject optJSONObject2 = optJSONArray3.optJSONObject(i6);
                                        int i7 = i6;
                                        JSONArray jSONArray = optJSONObject2.getJSONArray(str4);
                                        String str15 = str4;
                                        ArrayList arrayList4 = new ArrayList();
                                        String str16 = str7;
                                        JSONObject jSONObject4 = optJSONObject2;
                                        int i8 = 0;
                                        String str17 = str14;
                                        while (i8 < jSONArray.length()) {
                                            JSONObject optJSONObject3 = jSONArray.optJSONObject(i8);
                                            ArrayList arrayList5 = arrayList3;
                                            String str18 = str17;
                                            JSONArray jSONArray2 = optJSONArray3;
                                            String str19 = str12;
                                            CampaignUnit campaignUnit3 = campaignUnit2;
                                            int i9 = i8;
                                            String str20 = str11;
                                            JSONObject jSONObject5 = jSONObject4;
                                            String str21 = str8;
                                            String str22 = str10;
                                            String str23 = optString2;
                                            int i10 = i2;
                                            JSONArray jSONArray3 = jSONArray;
                                            CampaignEx parseCampaign = CampaignEx.parseCampaign(optJSONObject3, jSONObject.optString(JSON_KEY_ONLY_IMPRESSION_URL), jSONObject.optString(str10), jSONObject.optString(str12), false, campaignUnit3, str, jSONObject.optString(str8));
                                            if (parseCampaign != null) {
                                                parseCampaign.setNetAddress(str18);
                                                parseCampaign.setKeyIaUrl(campaignUnit3.getIa_url());
                                                parseCampaign.setKeyIaOri(campaignUnit3.getIa_ori());
                                                parseCampaign.setKeyIaRst(campaignUnit3.getIa_rst());
                                                parseCampaign.setKeyIaIcon(campaignUnit3.getIa_icon());
                                                parseCampaign.setAdType(jSONObject.optInt(str5));
                                                parseCampaign.setIa_ext1(jSONObject.optString(CampaignEx.KEY_IA_EXT1));
                                                parseCampaign.setIa_ext2(jSONObject.optString(CampaignEx.KEY_IA_EXT2));
                                                parseCampaign.setAc_s(jSONObject.optInt(CampaignEx.KEY_ACTIVITY_CHECK_SWITCH, 1));
                                                parseCampaign.setVcn(campaignUnit3.getVcn());
                                                parseCampaign.setTokenRule(campaignUnit3.getTokenRule());
                                                parseCampaign.setEncryptPrice(campaignUnit3.getEncryptPrice());
                                                i3 = i;
                                                parseCampaign.setMof_tplid(i3);
                                                parseCampaign.setMof_template_url(str23);
                                                i4 = i10;
                                                parseCampaign.setNscpt(i4);
                                                parseCampaign.setPv_urls(arrayList);
                                                str23 = str23;
                                                str3 = jSONObject3;
                                                parseCampaign.setReq_ext_data(str3);
                                                arrayList4.add(parseCampaign);
                                            } else {
                                                str3 = jSONObject3;
                                                i3 = i;
                                                i4 = i10;
                                                campaignUnit3.setMsg(str20);
                                            }
                                            str11 = str20;
                                            i8 = i9 + 1;
                                            i2 = i4;
                                            campaignUnit2 = campaignUnit3;
                                            i = i3;
                                            jSONObject3 = str3;
                                            optJSONArray3 = jSONArray2;
                                            str12 = str19;
                                            str17 = str18;
                                            arrayList3 = arrayList5;
                                            jSONArray = jSONArray3;
                                            str8 = str21;
                                            optString2 = str23;
                                            jSONObject4 = jSONObject5;
                                            str10 = str22;
                                        }
                                        String str24 = str10;
                                        JSONObject jSONObject6 = jSONObject4;
                                        String str25 = str8;
                                        ArrayList arrayList6 = arrayList3;
                                        Frame frame = new Frame();
                                        frame.setParentSessionId(jSONObject.optString(str6));
                                        frame.setSessionId(jSONObject.optString(str16));
                                        frame.setCampaigns(arrayList4);
                                        String str26 = str13;
                                        frame.setTemplate(jSONObject6.optInt(str26));
                                        arrayList6.add(frame);
                                        str13 = str26;
                                        str11 = str11;
                                        i2 = i2;
                                        campaignUnit2 = campaignUnit2;
                                        i = i;
                                        jSONObject3 = jSONObject3;
                                        str4 = str15;
                                        str10 = str24;
                                        optJSONArray3 = optJSONArray3;
                                        str12 = str12;
                                        optString2 = optString2;
                                        str14 = str17;
                                        str7 = str16;
                                        i6 = i7 + 1;
                                        arrayList3 = arrayList6;
                                        str5 = str5;
                                        str6 = str6;
                                        str8 = str25;
                                    } catch (Exception unused) {
                                        r13 = campaignUnit2;
                                    }
                                }
                                r13 = campaignUnit2;
                                r13.setListFrames(arrayList3);
                            } else {
                                String str27 = CampaignEx.JSON_KEY_ECPPV;
                                String str28 = JSON_KEY_HTML_URL;
                                String str29 = JSON_KEY_END_SCREEN_URL;
                                String str30 = optString2;
                                String str31 = jSONObject3;
                                int i11 = i2;
                                int i12 = i;
                                r13 = campaignUnit;
                                if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                                    ArrayList arrayList7 = new ArrayList();
                                    int i13 = 0;
                                    r13 = r13;
                                    while (i13 < optJSONArray2.length()) {
                                        JSONObject optJSONObject4 = optJSONArray2.optJSONObject(i13);
                                        JSONArray jSONArray4 = optJSONArray2;
                                        String optString3 = jSONObject.optString(str9);
                                        CampaignUnit campaignUnit4 = r13;
                                        String str32 = str28;
                                        String optString4 = jSONObject.optString(str32);
                                        int i14 = i12;
                                        String str33 = str31;
                                        String str34 = str29;
                                        String optString5 = jSONObject.optString(str34);
                                        str29 = str34;
                                        String str35 = str27;
                                        str27 = str35;
                                        int i15 = i13;
                                        String str36 = str9;
                                        String str37 = str30;
                                        ?? parseCampaign2 = CampaignEx.parseCampaign(optJSONObject4, optString3, optString4, optString5, false, campaignUnit4, str, jSONObject.optString(str35));
                                        CampaignUnit campaignUnit5 = campaignUnit4;
                                        if (parseCampaign2 != 0) {
                                            parseCampaign2.setNetAddress(r13);
                                            parseCampaign2.setMof_tplid(i14);
                                            parseCampaign2.setMof_template_url(str37);
                                            parseCampaign2.setNscpt(i11);
                                            parseCampaign2.setPv_urls(arrayList);
                                            parseCampaign2.setReq_ext_data(str33);
                                            parseCampaign2.setVcn(campaignUnit5.getVcn());
                                            parseCampaign2.setTokenRule(campaignUnit5.getTokenRule());
                                            parseCampaign2.setEncryptPrice(campaignUnit5.getEncryptPrice());
                                            parseCampaign2.setAc_s(jSONObject.optInt(CampaignEx.KEY_ACTIVITY_CHECK_SWITCH, 1));
                                            arrayList7.add(parseCampaign2);
                                        } else {
                                            campaignUnit5.setMsg(str11);
                                        }
                                        i12 = i14;
                                        str30 = str37;
                                        str31 = str33;
                                        str28 = str32;
                                        i13 = i15 + 1;
                                        str9 = str36;
                                        optJSONArray2 = jSONArray4;
                                        r13 = campaignUnit5;
                                    }
                                    r13.setAds(arrayList7);
                                }
                            }
                        } catch (Exception unused2) {
                            r13 = str11;
                        }
                    } catch (Exception unused3) {
                    }
                } catch (Exception unused4) {
                    r13 = campaignUnit;
                }
                return r13;
            } catch (Exception unused5) {
            }
        }
        return null;
    }

    public static CampaignUnit parseV5CampaignUnit(JSONObject jSONObject, String str) {
        return parseCampaignUnit(jSONObject, str);
    }
}
