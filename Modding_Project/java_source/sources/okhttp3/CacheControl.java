package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import io.flutter.plugin.editing.SpellCheckPlugin;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u001a\u0018\u0000 (2\u00020\u0001:\u0002)(Bs\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u0004\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u001a\u0010\u0017\u001a\u0004\b\u001b\u0010\u0019R\u0017\u0010\u0006\u001a\u00020\u00058\u0007¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0007\u001a\u00020\u00058\u0007¢\u0006\f\n\u0004\b\u001e\u0010\u001d\u001a\u0004\b \u0010\u001fR\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\u0017\u001a\u0004\b\u001a\u0010\u0019R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\"\u0010\u0017\u001a\u0004\b\u001c\u0010\u0019R\u0017\u0010\n\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b#\u0010\u0017\u001a\u0004\b#\u0010\u0019R\u0017\u0010\u000b\u001a\u00020\u00058\u0007¢\u0006\f\n\u0004\b\u0018\u0010\u001d\u001a\u0004\b!\u0010\u001fR\u0017\u0010\f\u001a\u00020\u00058\u0007¢\u0006\f\n\u0004\b\u001b\u0010\u001d\u001a\u0004\b\"\u0010\u001fR\u0017\u0010\r\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b$\u0010\u0017\u001a\u0004\b%\u0010\u0019R\u0017\u0010\u000e\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b%\u0010\u0017\u001a\u0004\b$\u0010\u0019R\u0017\u0010\u000f\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b \u0010\u0017\u001a\u0004\b\u0016\u0010\u0019R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lokhttp3/CacheControl;", "", "", "noCache", "noStore", "", "maxAgeSeconds", "sMaxAgeSeconds", "isPrivate", "isPublic", "mustRevalidate", "maxStaleSeconds", "minFreshSeconds", "onlyIfCached", "noTransform", "immutable", "", "headerValue", "<init>", "(ZZIIZZZIIZZZLjava/lang/String;)V", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Companion", "Builder", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class CacheControl {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f12179Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12180Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12181Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12182Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f12183Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f12184Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12185Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12186Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f12188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f12189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12190Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12191Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CacheControl f12178Wwwwwwwwwwwwwwwwwwwww = new Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CacheControl f12177Wwwwwwwwwwwwwwwwwwww = new Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.MAX_VALUE, TimeUnit.SECONDS).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0004\u001a\u00020\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0006\u001a\u00020\u0000¢\u0006\u0004\b\u0006\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0000¢\u0006\u0004\b\r\u0010\u0005J\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u0013\u0010\u0012\u001a\u00020\u0007*\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0015R\u0016\u0010\u001e\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0015R\u0016\u0010 \u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u0015¨\u0006!"}, d2 = {"Lokhttp3/CacheControl$Builder;", "", "<init>", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/CacheControl$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "maxStale", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/CacheControl;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/CacheControl;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)I", "", "Z", "noCache", "noStore", "I", "maxAgeSeconds", "maxStaleSeconds", "minFreshSeconds", "onlyIfCached", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "noTransform", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "immutable", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12192Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12193Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12194Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f12194Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f12198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f12199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull TimeUnit timeUnit) {
            if (i >= 0) {
                this.f12196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeUnit.toSeconds(i));
                return this;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("maxStale < 0: ", Integer.valueOf(i)).toString());
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            if (j > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) j;
        }

        @NotNull
        public final CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new CacheControl(this.f12199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, -1, false, false, false, this.f12196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12194Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12193Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12192Wwwwwwwwwwwwwwwwwwwwwwwwwww, null, null);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\r\u001a\u00020\u000b*\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010¨\u0006\u0012"}, d2 = {"Lokhttp3/CacheControl$Companion;", "", "<init>", "()V", "Lokhttp3/Headers;", "headers", "Lokhttp3/CacheControl;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;)Lokhttp3/CacheControl;", "", "characters", "", SpellCheckPlugin.START_INDEX_KEY, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;I)I", "FORCE_CACHE", "Lokhttp3/CacheControl;", "FORCE_NETWORK", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x00d4 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:77:0x00cc A[SYNTHETIC] */
        @kotlin.jvm.JvmStatic
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull okhttp3.Headers r33) {
            /*
                Method dump skipped, instructions count: 418
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CacheControl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okhttp3.Headers):okhttp3.CacheControl");
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, int i) {
            int length = str.length();
            while (i < length) {
                int i2 = i + 1;
                if (StringsKt.contains$default((CharSequence) str2, str.charAt(i), false, 2, (Object) null)) {
                    return i;
                }
                i = i2;
            }
            return str.length();
        }

        public Companion() {
        }
    }

    public /* synthetic */ CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, i, i2, z3, z4, z5, i3, i4, z6, z7, z8, str);
    }

    @JvmName(name = "sMaxAgeSeconds")
    public final int Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "onlyIfCached")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12182Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "noTransform")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12181Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "noStore")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12190Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "noCache")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12191Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "mustRevalidate")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12185Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "minFreshSeconds")
    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12183Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "maxStaleSeconds")
    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12184Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "maxAgeSeconds")
    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12186Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "immutable")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12180Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public String toString() {
        String str = this.f12179Wwwwwwwwwwwwwwwwwwwwww;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                sb.append("no-cache, ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                sb.append("no-store, ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                sb.append("max-age=");
                sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                sb.append(", ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwww() != -1) {
                sb.append("s-maxage=");
                sb.append(Wwwwwwwwwwwwwwwwwwwwwww());
                sb.append(", ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                sb.append("private, ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                sb.append("public, ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                sb.append("must-revalidate, ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                sb.append("max-stale=");
                sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                sb.append(", ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                sb.append("min-fresh=");
                sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                sb.append(", ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwww()) {
                sb.append("only-if-cached, ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwww()) {
                sb.append("no-transform, ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                return "";
            }
            sb.delete(sb.length() - 2, sb.length());
            String sb2 = sb.toString();
            this.f12179Wwwwwwwwwwwwwwwwwwwwww = sb2;
            return sb2;
        }
        return str;
    }

    public CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.f12191Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f12190Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        this.f12189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f12188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f12187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z3;
        this.f12186Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z4;
        this.f12185Wwwwwwwwwwwwwwwwwwwwwwwwwwww = z5;
        this.f12184Wwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
        this.f12183Wwwwwwwwwwwwwwwwwwwwwwwwww = i4;
        this.f12182Wwwwwwwwwwwwwwwwwwwwwwwww = z6;
        this.f12181Wwwwwwwwwwwwwwwwwwwwwwww = z7;
        this.f12180Wwwwwwwwwwwwwwwwwwwwwww = z8;
        this.f12179Wwwwwwwwwwwwwwwwwwwwww = str;
    }
}
