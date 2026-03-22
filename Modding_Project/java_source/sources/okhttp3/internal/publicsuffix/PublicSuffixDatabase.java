package okhttp3.internal.publicsuffix;

import androidx.webkit.ProxyConfig;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ#\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0003R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0006\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0019¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "<init>", "()V", "", "domain", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/List;", "domainLabels", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Ljava/util/List;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "listRead", "Ljava/util/concurrent/CountDownLatch;", "Ljava/util/concurrent/CountDownLatch;", "readCompleteLatch", "", "[B", "publicSuffixListBytes", "publicSuffixExceptionListBytes", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class PublicSuffixDatabase {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[] f13005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[] f13006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f13004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {42};
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<String> f13003Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.listOf(ProxyConfig.MATCH_ALL_SCHEMES);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final PublicSuffixDatabase f13002Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new PublicSuffixDatabase();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicBoolean f13008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CountDownLatch f13007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CountDownLatch(1);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J+\u0010\r\u001a\u0004\u0018\u00010\f*\u00020\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\f8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;", "", "<init>", "()V", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "", "labels", "", "labelIndex", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([B[[BI)Ljava/lang/String;", "", "EXCEPTION_MARKER", "C", "", "PREVAILING_RULE", "Ljava/util/List;", "PUBLIC_SUFFIX_RESOURCE", "Ljava/lang/String;", "WILDCARD_LABEL", "[B", "instance", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PublicSuffixDatabase Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return PublicSuffixDatabase.f13002Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, byte[][] bArr2, int i) {
            int i2;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            boolean z;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            int length = bArr.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = (i3 + length) / 2;
                while (i4 > -1 && bArr[i4] != 10) {
                    i4--;
                }
                int i5 = i4 + 1;
                int i6 = 1;
                while (true) {
                    i2 = i5 + i6;
                    if (bArr[i2] == 10) {
                        break;
                    }
                    i6++;
                }
                int i7 = i2 - i5;
                int i8 = i;
                boolean z2 = false;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    if (z2) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = 46;
                        z = false;
                    } else {
                        boolean z3 = z2;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr2[i8][i9], 255);
                        z = z3;
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr[i5 + i10], 255);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != 0) {
                        break;
                    }
                    i10++;
                    i9++;
                    if (i10 == i7) {
                        break;
                    } else if (bArr2[i8].length == i9) {
                        if (i8 == bArr2.length - 1) {
                            break;
                        }
                        i8++;
                        z2 = true;
                        i9 = -1;
                    } else {
                        z2 = z;
                    }
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 >= 0) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 <= 0) {
                        int i11 = i7 - i10;
                        int length2 = bArr2[i8].length - i9;
                        int length3 = bArr2.length;
                        for (int i12 = i8 + 1; i12 < length3; i12++) {
                            length2 += bArr2[i12].length;
                        }
                        if (length2 >= i11) {
                            if (length2 <= i11) {
                                return new String(bArr, i5, i7, StandardCharsets.UTF_8);
                            }
                        }
                    }
                    i3 = i2 + 1;
                }
                length = i4;
            }
            return null;
        }

        public Companion() {
        }
    }

    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        List<String> split$default = StringsKt.split$default((CharSequence) str, new char[]{'.'}, false, 0, 6, (Object) null);
        if (Intrinsics.areEqual(CollectionsKt.last((List<? extends Object>) split$default), "")) {
            return CollectionsKt.dropLast(split$default, 1);
        }
        return split$default;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z = false;
        while (true) {
            try {
                try {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z = true;
                } catch (IOException e) {
                    Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww("Failed to read public suffix list", 5, e);
                    if (!z) {
                        return;
                    }
                }
            } finally {
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GzipSource(Okio.Wwwwwwwwwwwwwwwwwwwwwwww(resourceAsStream)));
        try {
            byte[] Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.readInt());
            byte[] Wwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.readInt());
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
            synchronized (this) {
                this.f13006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww2;
                this.f13005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww3;
            }
            this.f13007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.countDown();
        } finally {
        }
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        int size;
        int size2;
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(IDN.toUnicode(str));
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() == Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(0).charAt(0) != '!') {
            return null;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(0).charAt(0) == '!') {
            size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
            size2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
        } else {
            size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
            size2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() + 1;
        }
        return SequencesKt.joinToString$default(SequencesKt.drop(CollectionsKt.asSequence(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)), size - size2), ".", null, null, 0, null, null, 62, null);
    }

    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<String> list) {
        List<String> list2;
        String str;
        String str2;
        String str3;
        List<String> split$default;
        if (!this.f13008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() && this.f13008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            try {
                this.f13007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        if (this.f13006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            int size = list.size();
            byte[][] bArr = new byte[size];
            for (int i = 0; i < size; i++) {
                bArr[i] = list.get(i).getBytes(StandardCharsets.UTF_8);
            }
            int i2 = 0;
            while (true) {
                list2 = null;
                if (i2 < size) {
                    int i3 = i2 + 1;
                    Companion companion = Companion;
                    byte[] bArr2 = this.f13006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (bArr2 == null) {
                        bArr2 = null;
                    }
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr2, bArr, i2);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        break;
                    }
                    i2 = i3;
                } else {
                    str = null;
                    break;
                }
            }
            if (size > 1) {
                byte[][] bArr3 = (byte[][]) bArr.clone();
                int length = bArr3.length - 1;
                int i4 = 0;
                while (i4 < length) {
                    int i5 = i4 + 1;
                    bArr3[i4] = f13004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    Companion companion2 = Companion;
                    byte[] bArr4 = this.f13006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (bArr4 == null) {
                        bArr4 = null;
                    }
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr4, bArr3, i4);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                        str2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                        break;
                    }
                    i4 = i5;
                }
            }
            str2 = null;
            if (str2 != null) {
                int i6 = size - 1;
                int i7 = 0;
                while (i7 < i6) {
                    int i8 = i7 + 1;
                    Companion companion3 = Companion;
                    byte[] bArr5 = this.f13005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (bArr5 == null) {
                        bArr5 = null;
                    }
                    str3 = companion3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr5, bArr, i7);
                    if (str3 != null) {
                        break;
                    }
                    i7 = i8;
                }
            }
            str3 = null;
            if (str3 != null) {
                return StringsKt.split$default((CharSequence) Intrinsics.stringPlus("!", str3), new char[]{'.'}, false, 0, 6, (Object) null);
            }
            if (str == null && str2 == null) {
                return f13003Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (str == null) {
                split$default = null;
            } else {
                split$default = StringsKt.split$default((CharSequence) str, new char[]{'.'}, false, 0, 6, (Object) null);
            }
            if (split$default == null) {
                split$default = CollectionsKt.emptyList();
            }
            if (str2 != null) {
                list2 = StringsKt.split$default((CharSequence) str2, new char[]{'.'}, false, 0, 6, (Object) null);
            }
            if (list2 == null) {
                list2 = CollectionsKt.emptyList();
            }
            if (split$default.size() <= list2.size()) {
                return list2;
            }
            return split$default;
        }
        throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
    }
}
