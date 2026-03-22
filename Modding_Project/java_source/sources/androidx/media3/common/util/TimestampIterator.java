package androidx.media3.common.util;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public interface TimestampIterator {
    TimestampIterator copyOf();

    long getLastTimestampUs();

    boolean hasNext();

    long next();
}
