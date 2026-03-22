package retrofit2;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class RequestBuilder {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestBody f14278Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public FormBody.Builder f14279Wwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MultipartBody.Builder f14280Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f14281Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MediaType f14282Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Headers.Builder f14283Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Request.Builder f14284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Request.Builder();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public HttpUrl.Builder f14285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HttpUrl f14287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final char[] f14277Wwwwwwwwwwwwwwwwwwwwwww = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f14276Wwwwwwwwwwwwwwwwwwwwww = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class ContentTypeOverridingRequestBody extends RequestBody {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaType f14289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RequestBody f14290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ContentTypeOverridingRequestBody(RequestBody requestBody, MediaType mediaType) {
            this.f14290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestBody;
            this.f14289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mediaType;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() throws IOException {
            return this.f14290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contentLength();
        }

        @Override // okhttp3.RequestBody
        public MediaType contentType() {
            return this.f14289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            this.f14290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.writeTo(bufferedSink);
        }
    }

    public RequestBuilder(String str, HttpUrl httpUrl, @Nullable String str2, @Nullable Headers headers, @Nullable MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.f14288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f14287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl;
        this.f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f14282Wwwwwwwwwwwwwwwwwwwwwwwwwwww = mediaType;
        this.f14281Wwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        if (headers != null) {
            this.f14283Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            this.f14283Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Headers.Builder();
        }
        if (z2) {
            this.f14279Wwwwwwwwwwwwwwwwwwwwwwwww = new FormBody.Builder();
        } else if (z3) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.f14280Wwwwwwwwwwwwwwwwwwwwwwwwww = builder;
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultipartBody.f12344Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwww(Buffer buffer, String str, int i, int i2, boolean z) {
        Buffer buffer2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt >= 32 && codePointAt < 127 && " \"<>^`{}|\\?#".indexOf(codePointAt) == -1 && (z || (codePointAt != 47 && codePointAt != 37))) {
                    buffer.Illlllllllll(codePointAt);
                } else {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.Illlllllllll(codePointAt);
                    while (!buffer2.Wwwwwwwwwwww()) {
                        byte readByte = buffer2.readByte();
                        buffer.writeByte(37);
                        char[] cArr = f14277Wwwwwwwwwwwwwwwwwwwwwww;
                        buffer.writeByte(cArr[((readByte & 255) >> 4) & 15]);
                        buffer.writeByte(cArr[readByte & Ascii.SI]);
                    }
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwww(String str, boolean z) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt >= 32 && codePointAt < 127 && " \"<>^`{}|\\?#".indexOf(codePointAt) == -1 && (z || (codePointAt != 47 && codePointAt != 37))) {
                i += Character.charCount(codePointAt);
            } else {
                Buffer buffer = new Buffer();
                buffer.Illllllllllll(str, 0, i);
                Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, str, i, length, z);
                return buffer.Kkkkk();
            }
        }
        return str;
    }

    public void Wwwwwwwwwwwwwwwwwwwwww(Object obj) {
        this.f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj.toString();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww(RequestBody requestBody) {
        this.f14278Wwwwwwwwwwwwwwwwwwwwwwww = requestBody;
    }

    public Request.Builder Wwwwwwwwwwwwwwwwwwwwwwww() {
        HttpUrl Wwwwwwwwwwwwwwww2;
        HttpUrl.Builder builder = this.f14285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (builder != null) {
            Wwwwwwwwwwwwwwww2 = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            Wwwwwwwwwwwwwwww2 = this.f14287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(this.f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (Wwwwwwwwwwwwwwww2 == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f14287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", Relative: " + this.f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }
        ContentTypeOverridingRequestBody contentTypeOverridingRequestBody = this.f14278Wwwwwwwwwwwwwwwwwwwwwwww;
        if (contentTypeOverridingRequestBody == null) {
            FormBody.Builder builder2 = this.f14279Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (builder2 != null) {
                contentTypeOverridingRequestBody = builder2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                MultipartBody.Builder builder3 = this.f14280Wwwwwwwwwwwwwwwwwwwwwwwwww;
                if (builder3 != null) {
                    contentTypeOverridingRequestBody = builder3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                } else if (this.f14281Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    contentTypeOverridingRequestBody = RequestBody.create((MediaType) null, new byte[0]);
                }
            }
        }
        MediaType mediaType = this.f14282Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (mediaType != null) {
            if (contentTypeOverridingRequestBody != null) {
                contentTypeOverridingRequestBody = new ContentTypeOverridingRequestBody(contentTypeOverridingRequestBody, mediaType);
            } else {
                this.f14283Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Type", mediaType.toString());
            }
        }
        return this.f14284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14283Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f14288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, contentTypeOverridingRequestBody);
    }

    public <T> void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Class<T> cls, @Nullable T t) {
        this.f14284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(cls, t);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, @Nullable String str2, boolean z) {
        String str3 = this.f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str3 != null) {
            HttpUrl.Builder Wwwwwwwwwwwwwwwwwwwwwww2 = this.f14287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(str3);
            this.f14285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwww2;
            if (Wwwwwwwwwwwwwwwwwwwwwww2 != null) {
                this.f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            } else {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f14287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", Relative: " + this.f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }
        if (z) {
            this.f14285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
        } else {
            this.f14285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, boolean z) {
        if (this.f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(str2, z);
            String str3 = this.f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String replace = str3.replace("{" + str + "}", Wwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (!f14276Wwwwwwwwwwwwwwwwwwwwww.matcher(replace).matches()) {
                this.f14286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = replace;
                return;
            }
            throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): " + str2);
        }
        throw new AssertionError();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultipartBody.Part part) {
        this.f14280Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(part);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Headers headers, RequestBody requestBody) {
        this.f14280Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(headers, requestBody);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Headers headers) {
        this.f14283Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(headers);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                this.f14282Wwwwwwwwwwwwwwwwwwwwwwwwwwww = MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
                return;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Malformed content type: " + str2, e);
            }
        }
        this.f14283Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, boolean z) {
        if (z) {
            this.f14279Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
        } else {
            this.f14279Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
        }
    }
}
