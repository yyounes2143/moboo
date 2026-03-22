package com.changdu.mobovideo.localpush;

import android.content.Context;
import android.content.Intent;
import j$.util.Objects;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushReporter;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/changdu/mobovideo/localpush/LocalPushType;", "type", "", "triggerAtMs", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;J)V", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalPushReporter {
    @NotNull
    public static final LocalPushReporter INSTANCE = new LocalPushReporter();

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull LocalPushType localPushType, long j) {
        try {
            Objects.toString(localPushType);
        } catch (Throwable unused) {
        }
        try {
            Intent intent = new Intent("com.changdu.mobovideo.LOCAL_PUSH_TRIGGERED");
            intent.setPackage(context.getPackageName());
            intent.putExtra("type", localPushType.name());
            intent.putExtra("triggerAtMs", j);
            context.sendBroadcast(intent);
        } catch (Throwable unused2) {
        }
    }
}
