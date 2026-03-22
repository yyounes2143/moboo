package androidx.media3.datasource;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public interface DataSink {

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface Factory {
        DataSink createDataSink();
    }

    void close() throws IOException;

    void open(DataSpec dataSpec) throws IOException;

    void write(byte[] bArr, int i, int i2) throws IOException;
}
