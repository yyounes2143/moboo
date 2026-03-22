package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TrackOutput trackOutput, ParsableByteArray parsableByteArray, int i) {
        trackOutput.sampleData(parsableByteArray, i, 0);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TrackOutput trackOutput, DataReader dataReader, int i, boolean z) throws IOException {
        return trackOutput.sampleData(dataReader, i, z, 0);
    }
}
