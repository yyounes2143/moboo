package com.sensorsdata.analytics.android.sdk.visual;

import android.app.Activity;
import android.text.TextUtils;
import android.util.LruCache;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.SnapCache;
import com.sensorsdata.analytics.android.sdk.visual.model.CommonNode;
import com.sensorsdata.analytics.android.sdk.visual.model.FlutterNode;
import com.sensorsdata.analytics.android.sdk.visual.model.FlutterNodeInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.NodeInfo;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterNodesManager extends AbstractNodesManager {
    @Override // com.sensorsdata.analytics.android.sdk.visual.AbstractNodesManager
    public void handlerVisualizedFailure(String str, List<NodeInfo.AlertInfo> list) {
        AbstractNodesManager.sNodesCache.put(str, FlutterNodeInfo.createAlertInfo(list));
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.AbstractNodesManager
    public void handlerVisualizedPageInfo(String str) {
        FlutterNodeInfo parsePageInfo = parsePageInfo(str);
        if (AbstractNodesManager.sPageInfoCache == null) {
            AbstractNodesManager.sPageInfoCache = new LruCache<>(10);
        }
        Activity foregroundActivity = AppStateTools.getInstance().getForegroundActivity();
        if (foregroundActivity == null) {
            return;
        }
        AbstractNodesManager.sPageInfoCache.put(SnapCache.getInstance().getCanonicalName(foregroundActivity.getClass()), parsePageInfo);
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.AbstractNodesManager
    public void handlerVisualizedTrack(List<? extends CommonNode> list) {
        String str;
        Activity foregroundActivity = AppStateTools.getInstance().getForegroundActivity();
        if (foregroundActivity != null) {
            str = foregroundActivity.getClass().getCanonicalName();
        } else {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            AbstractNodesManager.sNodesCache.put(str, FlutterNodeInfo.createNodesInfo(list));
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.AbstractNodesManager
    public CommonNode parseExtraNodesInfo(JSONObject jSONObject) {
        FlutterNode flutterNode = new FlutterNode();
        flutterNode.setTitle(jSONObject.optString(CampaignEx.JSON_KEY_TITLE));
        flutterNode.setScreen_name(jSONObject.optString(FirebaseAnalytics.Param.SCREEN_NAME));
        flutterNode.setVisibility(true);
        return flutterNode;
    }

    public FlutterNodeInfo parsePageInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("data");
            return FlutterNodeInfo.createPageInfo(jSONObject.optString(CampaignEx.JSON_KEY_TITLE), jSONObject.optString(FirebaseAnalytics.Param.SCREEN_NAME), jSONObject.optString("lib_version"));
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
