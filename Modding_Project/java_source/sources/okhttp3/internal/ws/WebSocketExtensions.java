package okhttp3.internal.ws;

import com.unity3d.services.core.network.core.OkHttp3Client;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\b\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eBG\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0015\u001a\u00020\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0017R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0017R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0017R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions;", "", "", "perMessageDeflate", "", "clientMaxWindowBits", "clientNoContextTakeover", "serverMaxWindowBits", "serverNoContextTakeover", "unknownValues", "<init>", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V", "clientOriginated", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)Z", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Integer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class WebSocketExtensions {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13062Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Integer f13064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Integer f13066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13067Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions$Companion;", "", "<init>", "()V", "Lokhttp3/Headers;", "responseHeaders", "Lokhttp3/internal/ws/WebSocketExtensions;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;", "", "HEADER_WEB_SOCKET_EXTENSION", "Ljava/lang/String;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x004e, code lost:
            if (r6 != false) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
            if (r2 >= r4) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
            r3 = okhttp3.internal.Util.Wwwwwwwwwwwwwwwwwww(r15, ';', r2, r4);
            r6 = okhttp3.internal.Util.Wwwwwwwwwwwwwwwwwww(r15, '=', r2, r3);
            r2 = okhttp3.internal.Util.Kkkkkkk(r15, r2, r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0061, code lost:
            if (r6 >= r3) goto L66;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0063, code lost:
            r6 = kotlin.text.StringsKt.removeSurrounding(okhttp3.internal.Util.Kkkkkkk(r15, r6 + 1, r3), (java.lang.CharSequence) "\"");
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
            r6 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
            r3 = r3 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0079, code lost:
            if (kotlin.text.StringsKt.equals(r2, "client_max_window_bits", true) == false) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x007b, code lost:
            if (r7 == null) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x007d, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x007e, code lost:
            if (r6 != null) goto L65;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0080, code lost:
            r7 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0082, code lost:
            r7 = kotlin.text.StringsKt.toIntOrNull(r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0087, code lost:
            if (r7 != null) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0089, code lost:
            r2 = r3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x008a, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x008c, code lost:
            r2 = r3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0094, code lost:
            if (kotlin.text.StringsKt.equals(r2, "client_no_context_takeover", true) == false) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0096, code lost:
            if (r8 == false) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0098, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0099, code lost:
            if (r6 == null) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x009b, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x009c, code lost:
            r2 = r3;
            r8 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00a5, code lost:
            if (kotlin.text.StringsKt.equals(r2, "server_max_window_bits", true) == false) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00a7, code lost:
            if (r9 == null) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00a9, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00aa, code lost:
            if (r6 != null) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00ac, code lost:
            r9 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00ae, code lost:
            r9 = kotlin.text.StringsKt.toIntOrNull(r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00b3, code lost:
            if (r9 != null) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00bc, code lost:
            if (kotlin.text.StringsKt.equals(r2, "server_no_context_takeover", true) == false) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00be, code lost:
            if (r10 == false) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00c0, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00c1, code lost:
            if (r6 == null) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00c3, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00c4, code lost:
            r2 = r3;
            r10 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00c7, code lost:
            r4 = r2;
            r6 = true;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008a -> B:14:0x0051). Please submit an issue!!! */
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.internal.ws.WebSocketExtensions Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull okhttp3.Headers r22) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 213
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.ws.WebSocketExtensions.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okhttp3.Headers):okhttp3.internal.ws.WebSocketExtensions");
        }

        public Companion() {
        }
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            return this.f13065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return this.f13063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        if (this.f13067Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == webSocketExtensions.f13067Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f13066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, webSocketExtensions.f13066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f13065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == webSocketExtensions.f13065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f13064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, webSocketExtensions.f13064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f13063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == webSocketExtensions.f13063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f13062Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == webSocketExtensions.f13062Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    public int hashCode() {
        int hashCode;
        boolean z = this.f13067Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = 1;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i2 = r0 * 31;
        Integer num = this.f13066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i3 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i4 = (i2 + hashCode) * 31;
        ?? r2 = this.f13065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i5 = r2;
        if (r2 != 0) {
            i5 = 1;
        }
        int i6 = (i4 + i5) * 31;
        Integer num2 = this.f13064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (num2 != null) {
            i3 = num2.hashCode();
        }
        int i7 = (i6 + i3) * 31;
        ?? r22 = this.f13063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i8 = r22;
        if (r22 != 0) {
            i8 = 1;
        }
        int i9 = (i7 + i8) * 31;
        boolean z2 = this.f13062Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return i9 + i;
    }

    @NotNull
    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.f13067Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", clientMaxWindowBits=" + this.f13066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", clientNoContextTakeover=" + this.f13065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", serverMaxWindowBits=" + this.f13064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", serverNoContextTakeover=" + this.f13063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", unknownValues=" + this.f13062Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }

    public WebSocketExtensions(boolean z, @Nullable Integer num, boolean z2, @Nullable Integer num2, boolean z3, boolean z4) {
        this.f13067Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f13066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = num;
        this.f13065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        this.f13064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = num2;
        this.f13063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z3;
        this.f13062Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z4;
    }

    public /* synthetic */ WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : num, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? null : num2, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? false : z4);
    }
}
