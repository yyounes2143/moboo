package com.tencent.liteav.audio2.permission;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.j;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class PermissionActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<PermissionActivity, a> f10194a = new HashMap();

    public static void a(Context context, String[] strArr, a aVar) {
        try {
            Intent intent = new Intent(context, PermissionActivity.class);
            intent.putExtra("KEY_PERMISSIONS", strArr);
            intent.putExtra("KEY_CALLBACK", aVar);
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Throwable th) {
            Log.e("PermissionActivity", "start activity failed. ".concat(String.valueOf(th)), new Object[0]);
            try {
                Activity c = j.a().c();
                if (c != null) {
                    c.requestPermissions(strArr, 1000);
                    aVar.onRequestPermissionsResult(strArr, new int[1]);
                }
            } catch (Throwable th2) {
                Log.e("PermissionActivity", "requestPermissions failed. ".concat(String.valueOf(th2)), new Object[0]);
            }
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            return;
        }
        try {
            Intent intent = getIntent();
            f10194a.put(this, (a) intent.getSerializableExtra("KEY_CALLBACK"));
            String[] stringArrayExtra = intent.getStringArrayExtra("KEY_PERMISSIONS");
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 23) {
                requestPermissions(stringArrayExtra, 1000);
            }
        } catch (Throwable th) {
            Log.e("PermissionActivity", "requestPermissions failed. ".concat(String.valueOf(th)), new Object[0]);
        }
    }

    @Override // android.app.Activity
    @SensorsDataInstrumented
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PushAutoTrackHelper.onNewIntent(this, intent);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        a aVar = f10194a.get(this);
        if (aVar == null) {
            return;
        }
        aVar.onRequestPermissionsResult(strArr, iArr);
        finish();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static abstract class a implements Serializable {
        public void onRequestPermissionsResult(String[] strArr, int[] iArr) {
        }
    }
}
