package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.o;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y0;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.net.URLEncoder;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class n extends a<com.mbridge.msdk.foundation.entity.m> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8970a = "com.mbridge.msdk.foundation.db.n";
    private static n b;

    private n(f fVar) {
        super(fVar);
    }

    public static n a(f fVar) {
        if (b == null) {
            synchronized (n.class) {
                try {
                    if (b == null) {
                        b = new n(fVar);
                    }
                } finally {
                }
            }
        }
        return b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
        if (r1 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
        if (r1 == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0026, code lost:
        r1.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized int a() {
        /*
            r4 = this;
            monitor-enter(r4)
            r0 = 0
            r1 = 0
            java.lang.String r2 = "select count(*) from reward_report"
            android.database.sqlite.SQLiteDatabase r3 = r4.getReadableDatabase()     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1c
            android.database.Cursor r1 = r3.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1c
            if (r1 == 0) goto L1e
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1c
            if (r2 == 0) goto L1e
            int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1c
            goto L1e
        L1a:
            r0 = move-exception
            goto L2e
        L1c:
            r2 = move-exception
            goto L21
        L1e:
            if (r1 == 0) goto L2c
            goto L26
        L21:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L2c
        L26:
            r1.close()     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2c
            goto L2c
        L2a:
            r0 = move-exception
            goto L34
        L2c:
            monitor-exit(r4)
            return r0
        L2e:
            if (r1 == 0) goto L33
            r1.close()     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L33
        L33:
            throw r0     // Catch: java.lang.Throwable -> L2a
        L34:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L2a
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.n.a():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x033a, code lost:
        if (r10 != null) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0342 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.util.List<com.mbridge.msdk.foundation.entity.m> a(java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.n.a(java.lang.String):java.util.List");
    }

    public synchronized long a(com.mbridge.msdk.foundation.entity.m mVar) {
        try {
            if (mVar != null) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("key", mVar.n());
                    contentValues.put("networkType", Integer.valueOf(mVar.q()));
                    contentValues.put("network_str", mVar.r());
                    contentValues.put("isCompleteView", Integer.valueOf(mVar.m()));
                    contentValues.put("watchedMillis", Integer.valueOf(mVar.F()));
                    contentValues.put("videoLength", Integer.valueOf(mVar.C()));
                    if (!TextUtils.isEmpty(mVar.s())) {
                        contentValues.put("offerUrl", mVar.s());
                    }
                    if (!TextUtils.isEmpty(mVar.t())) {
                        contentValues.put("reason", URLEncoder.encode(mVar.t(), "utf-8"));
                    }
                    contentValues.put("result", Integer.valueOf(mVar.x()));
                    contentValues.put(TypedValues.TransitionType.S_DURATION, mVar.g());
                    contentValues.put("videoSize", Long.valueOf(mVar.D()));
                    contentValues.put("type", mVar.h());
                    String i = mVar.i();
                    if (!TextUtils.isEmpty(i)) {
                        contentValues.put(CampaignEx.ENDCARD_URL, i);
                    }
                    String E = mVar.E();
                    if (!TextUtils.isEmpty(E)) {
                        contentValues.put(CampaignEx.JSON_KEY_VIDEO_URL, E);
                    }
                    String u = mVar.u();
                    if (!TextUtils.isEmpty(u)) {
                        contentValues.put("rid", u);
                    }
                    String v = mVar.v();
                    if (!TextUtils.isEmpty(v)) {
                        contentValues.put("rid_n", v);
                    }
                    String z = mVar.z();
                    if (!TextUtils.isEmpty(z)) {
                        contentValues.put("template_url", z);
                    }
                    String l = mVar.l();
                    if (!TextUtils.isEmpty(l)) {
                        contentValues.put(CampaignEx.JSON_KEY_IMAGE_URL, l);
                    }
                    String a2 = mVar.a();
                    if (!TextUtils.isEmpty(a2)) {
                        contentValues.put("ad_type", URLEncoder.encode(a2, "utf-8"));
                    }
                    contentValues.put("unitId", mVar.B());
                    contentValues.put("campaignId", mVar.d());
                    if ("2000039".equals(mVar.n())) {
                        String b2 = o.b(mVar);
                        if (y0.b(b2)) {
                            contentValues.put("h5_click_data", b2);
                        }
                    }
                    String w = mVar.w();
                    if (!TextUtils.isEmpty(w)) {
                        contentValues.put("resource_type", URLEncoder.encode(w, "utf-8"));
                    }
                    String f = mVar.f();
                    if (!TextUtils.isEmpty(f)) {
                        contentValues.put(TPDownloadProxyEnum.USER_DEVICE_ID, URLEncoder.encode(f, "utf-8"));
                    }
                    String e = mVar.e();
                    if (!TextUtils.isEmpty(e)) {
                        contentValues.put("creative", URLEncoder.encode(e, "utf-8"));
                    }
                    contentValues.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, Integer.valueOf(mVar.b()));
                    return getWritableDatabase().insert("reward_report", null, contentValues);
                } catch (Exception e2) {
                    o0.b(f8970a, e2.getMessage());
                }
            }
            return -1L;
        } catch (Throwable th) {
            throw th;
        }
    }
}
