package okio;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"okio/Okio__JvmOkioKt", "okio/Okio__OkioKt"}, k = 4, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Okio {
    @NotNull
    public static final Source Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Socket socket) throws IOException {
        return Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwww(socket);
    }

    @NotNull
    public static final Source Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull InputStream inputStream) {
        return Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwww(inputStream);
    }

    @NotNull
    public static final Source Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwww(file);
    }

    @NotNull
    public static final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Socket socket) throws IOException {
        return Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(socket);
    }

    @NotNull
    public static final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull OutputStream outputStream) {
        return Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(outputStream);
    }

    @JvmOverloads
    @NotNull
    public static final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file, boolean z) throws FileNotFoundException {
        return Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file, z);
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AssertionError assertionError) {
        return Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(assertionError);
    }

    @NotNull
    public static final BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Source source) {
        return Okio__OkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(source);
    }

    @NotNull
    public static final BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Sink sink) {
        return Okio__OkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sink);
    }

    @JvmName(name = "blackhole")
    @NotNull
    public static final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Okio__OkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NotNull
    public static final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
    }
}
