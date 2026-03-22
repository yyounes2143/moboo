package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0006\u001a\u00020\u0005*\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0011\u0010\t\u001a\u00020\u0001*\u00020\b¢\u0006\u0004\b\t\u0010\n\u001a\u0011\u0010\u000b\u001a\u00020\u0005*\u00020\b¢\u0006\u0004\b\u000b\u0010\f\u001a\u001d\u0010\u0010\u001a\u00020\u0001*\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0011\u0010\u0012\u001a\u00020\u0001*\u00020\r¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0011\u0010\u0014\u001a\u00020\u0005*\u00020\r¢\u0006\u0004\b\u0014\u0010\u0015\"\u001c\u0010\u001a\u001a\n \u0017*\u0004\u0018\u00010\u00160\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019\"\u001c\u0010\u001f\u001a\u00020\u000e*\u00060\u001bj\u0002`\u001c8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Ljava/io/OutputStream;", "Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/OutputStream;)Lokio/Sink;", "Ljava/io/InputStream;", "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/InputStream;)Lokio/Source;", "Ljava/net/Socket;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/Socket;)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/Socket;)Lokio/Source;", "Ljava/io/File;", "", "append", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;Z)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Lokio/Source;", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/logging/Logger;", "logger", "Ljava/lang/AssertionError;", "Lkotlin/AssertionError;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/AssertionError;)Z", "isAndroidGetsocknameError", "okio"}, k = 5, mv = {1, 8, 0}, xi = 48, xs = "okio/Okio")
/* loaded from: classes7.dex */
public final /* synthetic */ class Okio__JvmOkioKt {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Logger f13195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Logger.getLogger("okio.Okio");

    @NotNull
    public static final Source Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Socket socket) throws IOException {
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(socket);
        return socketAsyncTimeout.Wwwwww(new InputStreamSource(socket.getInputStream(), socketAsyncTimeout));
    }

    @NotNull
    public static final Source Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull InputStream inputStream) {
        return new InputStreamSource(inputStream, new Timeout());
    }

    @NotNull
    public static final Source Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws FileNotFoundException {
        return new InputStreamSource(new FileInputStream(file), Timeout.f13251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public static /* synthetic */ Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwww(File file, boolean z, int i, Object obj) throws FileNotFoundException {
        if ((i & 1) != 0) {
            z = false;
        }
        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(file, z);
    }

    @NotNull
    public static final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Socket socket) throws IOException {
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(socket);
        return socketAsyncTimeout.Wwwwwww(new OutputStreamSink(socket.getOutputStream(), socketAsyncTimeout));
    }

    @NotNull
    public static final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull OutputStream outputStream) {
        return new OutputStreamSink(outputStream, new Timeout());
    }

    @JvmOverloads
    @NotNull
    public static final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file, boolean z) throws FileNotFoundException {
        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new FileOutputStream(file, z));
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AssertionError assertionError) {
        boolean z;
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            if (message != null) {
                z = StringsKt.contains$default((CharSequence) message, (CharSequence) "getsockname failed", false, 2, (Object) null);
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws FileNotFoundException {
        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new FileOutputStream(file, true));
    }
}
