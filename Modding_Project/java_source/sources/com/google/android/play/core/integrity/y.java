package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.GuardedBy;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
abstract class y {
    private final String b;
    private final long c;
    @GuardedBy("dialogShownLock")
    private boolean e;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.s f7732a = new com.google.android.play.integrity.internal.s("IntegrityDialogWrapper");
    private final Object d = new Object();

    public y(String str, long j) {
        this.b = str;
        this.c = j;
    }

    public final Task a(Activity activity, int i) {
        synchronized (this.d) {
            try {
                if (this.e) {
                    return Tasks.forResult(0);
                }
                this.e = true;
                this.f7732a.a("checkAndShowDialog(%s)", Integer.valueOf(i));
                Bundle bundle = new Bundle();
                bundle.putInt("dialog.intent.type", i);
                bundle.putString("package.name", this.b);
                bundle.putInt("playcore.integrity.version.major", 1);
                bundle.putInt("playcore.integrity.version.minor", 3);
                bundle.putInt("playcore.integrity.version.patch", 0);
                bundle.putLong("request.token.sid", this.c);
                return b(activity, bundle);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract Task b(Activity activity, Bundle bundle);
}
