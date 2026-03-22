package okhttp3.internal.http;

import com.unity3d.services.core.network.core.OkHttp3Client;
import kotlin.Metadata;
import okhttp3.Interceptor;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000f¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http/CallServerInterceptor;", "Lokhttp3/Interceptor;", "", "forWebSocket", "<init>", "(Z)V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "", "code", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Z", "Z", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class CallServerInterceptor implements Interceptor {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CallServerInterceptor(boolean z) {
        this.f12713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i == 100) {
            return true;
        }
        if (102 <= i && i < 200) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00da A[Catch: IOException -> 0x00ad, TryCatch #3 {IOException -> 0x00ad, blocks: (B:39:0x00a2, B:41:0x00a8, B:44:0x00b0, B:46:0x00da, B:48:0x00e0, B:49:0x00e3, B:50:0x0107, B:54:0x0112, B:56:0x0131, B:58:0x013f, B:65:0x0155, B:71:0x0168, B:75:0x018b, B:76:0x0195, B:74:0x0183, B:68:0x015e, B:60:0x014a, B:55:0x0121), top: B:89:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x015e A[Catch: IOException -> 0x00ad, TryCatch #3 {IOException -> 0x00ad, blocks: (B:39:0x00a2, B:41:0x00a8, B:44:0x00b0, B:46:0x00da, B:48:0x00e0, B:49:0x00e3, B:50:0x0107, B:54:0x0112, B:56:0x0131, B:58:0x013f, B:65:0x0155, B:71:0x0168, B:75:0x018b, B:76:0x0195, B:74:0x0183, B:68:0x015e, B:60:0x014a, B:55:0x0121), top: B:89:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0168 A[Catch: IOException -> 0x00ad, TryCatch #3 {IOException -> 0x00ad, blocks: (B:39:0x00a2, B:41:0x00a8, B:44:0x00b0, B:46:0x00da, B:48:0x00e0, B:49:0x00e3, B:50:0x0107, B:54:0x0112, B:56:0x0131, B:58:0x013f, B:65:0x0155, B:71:0x0168, B:75:0x018b, B:76:0x0195, B:74:0x0183, B:68:0x015e, B:60:0x014a, B:55:0x0121), top: B:89:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    @Override // okhttp3.Interceptor
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response intercept(@org.jetbrains.annotations.NotNull okhttp3.Interceptor.Chain r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.CallServerInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }
}
