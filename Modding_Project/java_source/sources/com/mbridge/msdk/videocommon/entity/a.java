package com.mbridge.msdk.videocommon.entity;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f10018a;
    private String b;

    public a(String str, String str2) {
        this.f10018a = str;
        this.b = str2;
    }

    public static a a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return new a(jSONObject.optString(RemoteConfigConstants.RequestFieldKey.APP_ID), jSONObject.optString(HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID));
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }
}
