package com.changdu.mobovideo.picture;

import androidx.work.Data;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\fR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000b\u001a\u0004\b\r\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/changdu/mobovideo/picture/PushPayload;", "", "", "messageId", "pushMessageJsonStr", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroidx/work/Data;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroidx/work/Data;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PushPayload {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/changdu/mobovideo/picture/PushPayload$Companion;", "", "<init>", "()V", "", "messageId", "pushMessageJsonStr", "Lcom/changdu/mobovideo/picture/PushPayload;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Lcom/changdu/mobovideo/picture/PushPayload;", "Landroidx/work/Data;", "data", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroidx/work/Data;)Lcom/changdu/mobovideo/picture/PushPayload;", "KEY_MESSAGE_ID", "Ljava/lang/String;", "KEY_PUSH_MESSAGE_JSON", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final PushPayload Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Data data) {
            String string;
            String string2 = data.getString("key_push_message_json");
            if (string2 == null || StringsKt.isBlank(string2) || (string = data.getString("key_message_id")) == null || StringsKt.isBlank(string)) {
                return null;
            }
            return new PushPayload(string, string2);
        }

        @NotNull
        public final PushPayload Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            return new PushPayload(str, str2);
        }

        public Companion() {
        }
    }

    public PushPayload(@NotNull String str, @NotNull String str2) {
        this.f5579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f5578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
    }

    @NotNull
    public final Data Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Data.Builder().putString("key_message_id", this.f5579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).putString("key_push_message_json", this.f5578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).build();
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
