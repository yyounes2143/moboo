package com.sensorsdata.analytics.android.sdk.visual;

import android.text.TextUtils;
import android.util.LruCache;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.autotrack.core.beans.AutoTrackConstants;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.util.Dispatcher;
import com.sensorsdata.analytics.android.sdk.visual.constant.VisualConstants;
import com.sensorsdata.analytics.android.sdk.visual.model.CommonNode;
import com.sensorsdata.analytics.android.sdk.visual.model.NodeInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class AbstractNodesManager {
    protected static final String CALL_TYPE_PAGE_INFO = "page_info";
    protected static final String CALL_TYPE_VISUALIZED_TRACK = "visualized_track";
    protected static final int LRU_CACHE_MAX_SIZE = 10;
    private static final String TAG = "SA.Visual.AbstractNodesManager";
    protected static LruCache<String, NodeInfo> sNodesCache;
    protected static LruCache<String, NodeInfo> sPageInfoCache;
    protected boolean mHasAlertInfo;
    private boolean mHasWebView;
    protected String mLastThirdNodeMsg = null;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class NodeRect {
        public float left;
        public float top;

        public NodeRect(float f, float f2) {
            this.top = f;
            this.left = f2;
        }
    }

    private void findWebNodes(JSONArray jSONArray, List<CommonNode> list, Map<String, NodeRect> map) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject optJSONObject = jSONArray.optJSONObject(i);
                        CommonNode parseExtraNodesInfo = parseExtraNodesInfo(optJSONObject);
                        parseExtraNodesInfo.setId(optJSONObject.optString("id"));
                        parseExtraNodesInfo.set$element_content(optJSONObject.optString(AutoTrackConstants.ELEMENT_CONTENT));
                        parseExtraNodesInfo.setTop((float) optJSONObject.optDouble("top"));
                        parseExtraNodesInfo.setLeft((float) optJSONObject.optDouble("left"));
                        parseExtraNodesInfo.setScrollX((float) optJSONObject.optDouble("scrollX"));
                        parseExtraNodesInfo.setScrollY((float) optJSONObject.optDouble("scrollY"));
                        parseExtraNodesInfo.setWidth((float) optJSONObject.optDouble("width"));
                        parseExtraNodesInfo.setHeight((float) optJSONObject.optDouble("height"));
                        parseExtraNodesInfo.setLevel(optJSONObject.optInt("level"));
                        parseExtraNodesInfo.set$element_path(optJSONObject.optString(VisualConstants.ELEMENT_PATH));
                        parseExtraNodesInfo.set$element_position(optJSONObject.optString(VisualConstants.ELEMENT_POSITION));
                        parseExtraNodesInfo.setEnable_click(optJSONObject.optBoolean("enable_click", true));
                        parseExtraNodesInfo.setIs_list_view(optJSONObject.optBoolean("is_list_view"));
                        JSONArray optJSONArray = optJSONObject.optJSONArray("subelements");
                        ArrayList arrayList = new ArrayList();
                        if (optJSONArray != null && optJSONArray.length() > 0) {
                            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                String optString = optJSONArray.optString(i2);
                                if (!TextUtils.isEmpty(optString)) {
                                    arrayList.add(optString);
                                    if (!map.containsKey(optString)) {
                                        map.put(optString, new NodeRect(parseExtraNodesInfo.getTop(), parseExtraNodesInfo.getLeft()));
                                    }
                                }
                            }
                        }
                        if (arrayList.size() > 0) {
                            parseExtraNodesInfo.setSubelements(arrayList);
                        }
                        list.add(parseExtraNodesInfo);
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    private void modifyWebNodes(List<? extends CommonNode> list, Map<String, NodeRect> map) {
        float f;
        if (list != null && list.size() != 0) {
            synchronized (this) {
                try {
                    for (CommonNode commonNode : list) {
                        commonNode.setOriginLeft(commonNode.getLeft());
                        commonNode.setOriginTop(commonNode.getTop());
                        if (!map.containsKey(commonNode.getId())) {
                            commonNode.setRootView(true);
                            float f2 = 0.0f;
                            if (!Float.isNaN(commonNode.getScrollY())) {
                                f = commonNode.getScrollY();
                            } else {
                                f = 0.0f;
                            }
                            if (!Float.isNaN(commonNode.getScrollX())) {
                                f2 = commonNode.getScrollX();
                            }
                            commonNode.setTop(commonNode.getTop() + f);
                            commonNode.setLeft(commonNode.getLeft() + f2);
                        } else {
                            NodeRect nodeRect = map.get(commonNode.getId());
                            if (nodeRect != null) {
                                commonNode.setTop(commonNode.getTop() - nodeRect.top);
                                commonNode.setLeft(commonNode.getLeft() - nodeRect.left);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private List<NodeInfo.AlertInfo> parseAlertResult(String str) {
        ArrayList arrayList = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONArray optJSONArray = new JSONObject(str).optJSONArray("data");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                try {
                    JSONObject jSONObject = optJSONArray.getJSONObject(i);
                    if (jSONObject != null) {
                        arrayList2.add(new NodeInfo.AlertInfo(jSONObject.optString(CampaignEx.JSON_KEY_TITLE), jSONObject.optString("message"), jSONObject.optString("link_text"), jSONObject.optString("link_url")));
                    }
                } catch (JSONException e) {
                    e = e;
                    arrayList = arrayList2;
                    SALog.printStackTrace(e);
                    return arrayList;
                } catch (Exception e2) {
                    e = e2;
                    arrayList = arrayList2;
                    SALog.printStackTrace(e);
                    return arrayList;
                }
            }
            return arrayList2;
        } catch (JSONException e3) {
            e = e3;
        } catch (Exception e4) {
            e = e4;
        }
    }

    private List<CommonNode> parseResult(String str) {
        JSONArray jSONArray = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        List<CommonNode> arrayList = new ArrayList<>();
        Map<String, NodeRect> hashMap = new HashMap<>();
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray optJSONArray = jSONObject.optJSONArray("data");
            try {
                jSONArray = jSONObject.optJSONArray("extra_elements");
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
            if (optJSONArray != null) {
                findWebNodes(optJSONArray, arrayList, hashMap);
            }
            if (jSONArray != null) {
                findWebNodes(jSONArray, arrayList, hashMap);
            }
            modifyWebNodes(arrayList, hashMap);
            try {
                Collections.sort(arrayList, new Comparator<CommonNode>() { // from class: com.sensorsdata.analytics.android.sdk.visual.AbstractNodesManager.1
                    @Override // java.util.Comparator
                    public int compare(CommonNode commonNode, CommonNode commonNode2) {
                        return commonNode.getLevel() - commonNode2.getLevel();
                    }
                });
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        } catch (JSONException e3) {
            SALog.printStackTrace(e3);
        } catch (Exception e4) {
            SALog.printStackTrace(e4);
        }
        return arrayList;
    }

    public void clear() {
        this.mLastThirdNodeMsg = null;
        this.mHasAlertInfo = false;
    }

    public String getLastThirdMsg() {
        return this.mLastThirdNodeMsg;
    }

    public NodeInfo getNodes(String str) {
        if (!VisualizedAutoTrackService.getInstance().isServiceRunning() && !HeatMapService.getInstance().isServiceRunning()) {
            return null;
        }
        if (sNodesCache == null) {
            sNodesCache = new LruCache<>(10);
        }
        return sNodesCache.get(str);
    }

    public NodeInfo getPageInfo(String str) {
        if (!VisualizedAutoTrackService.getInstance().isServiceRunning() && !HeatMapService.getInstance().isServiceRunning()) {
            return null;
        }
        if (sPageInfoCache == null) {
            sPageInfoCache = new LruCache<>(10);
        }
        return sPageInfoCache.get(str);
    }

    public void handlerFailure(String str, String str2) {
        try {
            Dispatcher.getInstance().removeCallbacksAndMessages();
            if ((VisualizedAutoTrackService.getInstance().isServiceRunning() || HeatMapService.getInstance().isServiceRunning()) && !TextUtils.isEmpty(str2)) {
                SALog.i(TAG, "handlerFailure url " + str + ",msg: " + str2);
                this.mHasAlertInfo = true;
                this.mLastThirdNodeMsg = String.valueOf(System.currentTimeMillis());
                List<NodeInfo.AlertInfo> parseAlertResult = parseAlertResult(str2);
                if (parseAlertResult != null && parseAlertResult.size() > 0) {
                    if (sNodesCache == null) {
                        sNodesCache = new LruCache<>(10);
                    }
                    handlerVisualizedFailure(str, parseAlertResult);
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e A[Catch: Exception -> 0x0057, JSONException -> 0x0059, TryCatch #2 {JSONException -> 0x0059, Exception -> 0x0057, blocks: (B:11:0x0032, B:30:0x006a, B:32:0x006e, B:34:0x0074, B:36:0x007a, B:38:0x007e, B:39:0x0087, B:16:0x004d, B:23:0x005b), top: B:44:0x0032 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handlerMessage(java.lang.String r6) {
        /*
            r5 = this;
            com.sensorsdata.analytics.android.sdk.util.Dispatcher r0 = com.sensorsdata.analytics.android.sdk.util.Dispatcher.getInstance()
            r0.removeCallbacksAndMessages()
            com.sensorsdata.analytics.android.sdk.visual.VisualizedAutoTrackService r0 = com.sensorsdata.analytics.android.sdk.visual.VisualizedAutoTrackService.getInstance()
            boolean r0 = r0.isServiceRunning()
            if (r0 != 0) goto L1d
            com.sensorsdata.analytics.android.sdk.visual.HeatMapService r0 = com.sensorsdata.analytics.android.sdk.visual.HeatMapService.getInstance()
            boolean r0 = r0.isServiceRunning()
            if (r0 != 0) goto L1d
            goto L92
        L1d:
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 == 0) goto L25
            goto L92
        L25:
            long r0 = java.lang.System.currentTimeMillis()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r5.mLastThirdNodeMsg = r0
            r0 = 0
            r5.mHasAlertInfo = r0
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            r1.<init>(r6)     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            java.lang.String r2 = "callType"
            java.lang.String r1 = r1.optString(r2)     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            int r2 = r1.hashCode()     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            r3 = 817885468(0x30bff11c, float:1.3965606E-9)
            r4 = 1
            if (r2 == r3) goto L5b
            r0 = 883555422(0x34a9fc5e, float:3.1662324E-7)
            if (r2 == r0) goto L4d
            goto L64
        L4d:
            java.lang.String r0 = "page_info"
            boolean r0 = r1.equals(r0)     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            if (r0 == 0) goto L64
            r0 = r4
            goto L65
        L57:
            r6 = move-exception
            goto L8b
        L59:
            r6 = move-exception
            goto L8f
        L5b:
            java.lang.String r2 = "visualized_track"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            if (r1 == 0) goto L64
            goto L65
        L64:
            r0 = -1
        L65:
            if (r0 == 0) goto L6e
            if (r0 == r4) goto L6a
            goto L92
        L6a:
            r5.handlerVisualizedPageInfo(r6)     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            return
        L6e:
            java.util.List r6 = r5.parseResult(r6)     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            if (r6 == 0) goto L92
            int r0 = r6.size()     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            if (r0 <= 0) goto L92
            android.util.LruCache<java.lang.String, com.sensorsdata.analytics.android.sdk.visual.model.NodeInfo> r0 = com.sensorsdata.analytics.android.sdk.visual.AbstractNodesManager.sNodesCache     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            if (r0 != 0) goto L87
            android.util.LruCache r0 = new android.util.LruCache     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            r1 = 10
            r0.<init>(r1)     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            com.sensorsdata.analytics.android.sdk.visual.AbstractNodesManager.sNodesCache = r0     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
        L87:
            r5.handlerVisualizedTrack(r6)     // Catch: java.lang.Exception -> L57 org.json.JSONException -> L59
            return
        L8b:
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r6)
            goto L92
        L8f:
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r6)
        L92:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.visual.AbstractNodesManager.handlerMessage(java.lang.String):void");
    }

    public abstract void handlerVisualizedFailure(String str, List<NodeInfo.AlertInfo> list);

    public abstract void handlerVisualizedPageInfo(String str);

    public abstract void handlerVisualizedTrack(List<? extends CommonNode> list);

    public boolean hasAlertInfo() {
        return this.mHasAlertInfo;
    }

    public boolean hasThirdView() {
        return this.mHasWebView;
    }

    public abstract CommonNode parseExtraNodesInfo(JSONObject jSONObject);

    public void setHasThirdView(boolean z) {
        this.mHasWebView = z;
    }
}
