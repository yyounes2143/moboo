package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u0019B%\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0015\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0017R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017¨\u0006\u001b"}, d2 = {"Lokhttp3/FormBody;", "Lokhttp3/RequestBody;", "", "", "encodedNames", "encodedValues", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "Lokhttp3/MediaType;", "contentType", "()Lokhttp3/MediaType;", "", "contentLength", "()J", "Lokio/BufferedSink;", "sink", "", "writeTo", "(Lokio/BufferedSink;)V", "", "countBytes", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSink;Z)J", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", "Builder", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class FormBody extends RequestBody {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MediaType f12302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareTarget.ENCODING_TYPE_URL_ENCODED);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f12303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f12304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\t\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\nJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000fR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0011R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0011¨\u0006\u0014"}, d2 = {"Lokhttp3/FormBody$Builder;", "", "Ljava/nio/charset/Charset;", "charset", "<init>", "(Ljava/nio/charset/Charset;)V", "", "name", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/FormBody;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/FormBody;", "Ljava/nio/charset/Charset;", "", "Ljava/util/List;", "names", "values", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<String> f12305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<String> f12306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Charset f12307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @JvmOverloads
        public Builder() {
            this(null, 1, null);
        }

        @NotNull
        public final FormBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new FormBody(this.f12306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            HttpUrl.Companion companion = HttpUrl.Companion;
            this.f12306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, false, this.f12307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 83, null));
            this.f12305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion, str2, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, false, this.f12307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 83, null));
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            HttpUrl.Companion companion = HttpUrl.Companion;
            this.f12306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, this.f12307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 91, null));
            this.f12305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion, str2, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, this.f12307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 91, null));
            return this;
        }

        @JvmOverloads
        public Builder(@Nullable Charset charset) {
            this.f12307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = charset;
            this.f12306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f12305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        }

        public /* synthetic */ Builder(Charset charset, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : charset);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/FormBody$Companion;", "", "()V", "CONTENT_TYPE", "Lokhttp3/MediaType;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public FormBody(@NotNull List<String> list, @NotNull List<String> list2) {
        this.f12304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Util.Kkkkkkkkkkk(list);
        this.f12303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Util.Kkkkkkkkkkk(list2);
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BufferedSink bufferedSink, boolean z) {
        Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (z) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Buffer();
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        int size = this.f12304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            if (i > 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(38);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i));
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(61);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i));
            i = i2;
        }
        if (z) {
            long Kk = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kk();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkk();
            return Kk;
        }
        return 0L;
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, true);
    }

    @Override // okhttp3.RequestBody
    @NotNull
    public MediaType contentType() {
        return f12302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink bufferedSink) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSink, false);
    }
}
