package okio.internal;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.flutter.embedding.android.KeyboardMap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a5\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0000¢\u0006\u0004\b\t\u0010\n\u001a)\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00050\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0013\u0010\u0011\u001a\u00020\u0005*\u00020\u0010H\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0013\u0010\u0014\u001a\u00020\u0013*\u00020\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001b\u0010\u0017\u001a\u00020\u0013*\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0017\u0010\u0018\u001a5\u0010\u001f\u001a\u00020\u001d*\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00192\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0002¢\u0006\u0004\b\u001f\u0010 \u001a\u0013\u0010!\u001a\u00020\u001d*\u00020\u0010H\u0000¢\u0006\u0004\b!\u0010\"\u001a\u001b\u0010%\u001a\u00020#*\u00020\u00102\u0006\u0010$\u001a\u00020#H\u0000¢\u0006\u0004\b%\u0010&\u001a\u001f\u0010'\u001a\u0004\u0018\u00010#*\u00020\u00102\b\u0010$\u001a\u0004\u0018\u00010#H\u0002¢\u0006\u0004\b'\u0010&\u001a!\u0010*\u001a\u0004\u0018\u00010\u001c2\u0006\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u0019H\u0002¢\u0006\u0004\b*\u0010+\"\u0018\u0010/\u001a\u00020,*\u00020\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u00060"}, d2 = {"Lokio/Path;", "zipPath", "Lokio/FileSystem;", "fileSystem", "Lkotlin/Function1;", "Lokio/internal/ZipEntry;", "", "predicate", "Lokio/ZipFileSystem;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;", "", RemoteConfigConstants.ResponseFieldKey.ENTRIES, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Ljava/util/Map;", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;)Lokio/internal/ZipEntry;", "Lokio/internal/EocdRecord;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;)Lokio/internal/EocdRecord;", "regularRecord", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;Lokio/internal/EocdRecord;)Lokio/internal/EocdRecord;", "", "extraSize", "Lkotlin/Function2;", "", "", "block", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;)V", "Lokio/FileMetadata;", "basicMetadata", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "date", "time", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(II)Ljava/lang/Long;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Ljava/lang/String;", "hex", "okio"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipFiles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,459:1\n1045#2:460\n*S KotlinDebug\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n*L\n156#1:460\n*E\n"})
/* loaded from: classes7.dex */
public final class ZipFilesKt {
    public static final void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull BufferedSource bufferedSource) {
        Wwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource, null);
    }

    public static final EocdRecord Wwwwwwwwwwwwwwwwwwwwwwwww(BufferedSource bufferedSource, EocdRecord eocdRecord) throws IOException {
        bufferedSource.skip(12L);
        int Wwwwww2 = bufferedSource.Wwwwww();
        int Wwwwww3 = bufferedSource.Wwwwww();
        long Wwwwwwwwwwwwwwwwwww2 = bufferedSource.Wwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwww2 == bufferedSource.Wwwwwwwwwwwwwwwwwww() && Wwwwww2 == 0 && Wwwwww3 == 0) {
            bufferedSource.skip(8L);
            return new EocdRecord(Wwwwwwwwwwwwwwwwwww2, bufferedSource.Wwwwwwwwwwwwwwwwwww(), eocdRecord.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        throw new IOException("unsupported zip: spanned");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final FileMetadata Wwwwwwwwwwwwwwwwwwwwwwwwww(final BufferedSource bufferedSource, FileMetadata fileMetadata) {
        T t;
        int Wwwwww2;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (fileMetadata != null) {
            t = fileMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            t = 0;
        }
        objectRef.element = t;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        if (bufferedSource.Wwwwww() == 67324752) {
            bufferedSource.skip(2L);
            short Wwwwwwwwwwwwwwwwwwww2 = bufferedSource.Wwwwwwwwwwwwwwwwwwww();
            int i = Wwwwwwwwwwwwwwwwwwww2 & UShort.MAX_VALUE;
            if ((Wwwwwwwwwwwwwwwwwwww2 & 1) == 0) {
                bufferedSource.skip(18L);
                int Wwwwwwwwwwwwwwwwwwww3 = bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE;
                bufferedSource.skip(bufferedSource.Wwwwwwwwwwwwwwwwwwww() & 65535);
                if (fileMetadata == null) {
                    bufferedSource.skip(Wwwwwwwwwwwwwwwwwwww3);
                    return null;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource, Wwwwwwwwwwwwwwwwwwww3, new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipFilesKt$readOrSkipLocalHeader$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l) {
                        invoke(num.intValue(), l.longValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Long] */
                    /* JADX WARN: Type inference failed for: r10v11, types: [T, java.lang.Long] */
                    /* JADX WARN: Type inference failed for: r11v3, types: [T, java.lang.Long] */
                    public final void invoke(int i2, long j) {
                        if (i2 == 21589) {
                            if (j >= 1) {
                                byte readByte = BufferedSource.this.readByte();
                                boolean z = (readByte & 1) == 1;
                                boolean z2 = (readByte & 2) == 2;
                                boolean z3 = (readByte & 4) == 4;
                                BufferedSource bufferedSource2 = BufferedSource.this;
                                long j2 = z ? 5L : 1L;
                                if (z2) {
                                    j2 += 4;
                                }
                                if (z3) {
                                    j2 += 4;
                                }
                                if (j < j2) {
                                    throw new IOException("bad zip: extended timestamp extra too short");
                                }
                                if (z) {
                                    objectRef.element = Long.valueOf(bufferedSource2.Wwwwww() * 1000);
                                }
                                if (z2) {
                                    objectRef2.element = Long.valueOf(BufferedSource.this.Wwwwww() * 1000);
                                }
                                if (z3) {
                                    objectRef3.element = Long.valueOf(BufferedSource.this.Wwwwww() * 1000);
                                    return;
                                }
                                return;
                            }
                            throw new IOException("bad zip: extended timestamp extra too short");
                        }
                    }
                });
                return new FileMetadata(fileMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), fileMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, fileMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Long) objectRef3.element, (Long) objectRef.element, (Long) objectRef2.element, null, 128, null);
            }
            throw new IOException("unsupported zip: general purpose bit flag=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
        }
        throw new IOException("bad zip: expected " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(67324752) + " but was " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwww2));
    }

    @NotNull
    public static final FileMetadata Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull BufferedSource bufferedSource, @NotNull FileMetadata fileMetadata) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource, fileMetadata);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(BufferedSource bufferedSource, int i, Function2<? super Integer, ? super Long, Unit> function2) {
        long j = i;
        while (j != 0) {
            if (j >= 4) {
                int Wwwwwwwwwwwwwwwwwwww2 = bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE;
                long Wwwwwwwwwwwwwwwwwwww3 = bufferedSource.Wwwwwwwwwwwwwwwwwwww() & 65535;
                long j2 = j - 4;
                if (j2 >= Wwwwwwwwwwwwwwwwwwww3) {
                    bufferedSource.Wwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww3);
                    long Kk = bufferedSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kk();
                    function2.invoke(Integer.valueOf(Wwwwwwwwwwwwwwwwwwww2), Long.valueOf(Wwwwwwwwwwwwwwwwwwww3));
                    long Kk2 = (bufferedSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kk() + Wwwwwwwwwwwwwwwwwwww3) - Kk;
                    int i2 = (Kk2 > 0L ? 1 : (Kk2 == 0L ? 0 : -1));
                    if (i2 >= 0) {
                        if (i2 > 0) {
                            bufferedSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().skip(Kk2);
                        }
                        j = j2 - Wwwwwwwwwwwwwwwwwwww3;
                    } else {
                        throw new IOException("unsupported zip: too many bytes processed for " + Wwwwwwwwwwwwwwwwwwww2);
                    }
                } else {
                    throw new IOException("bad zip: truncated value in extra field");
                }
            } else {
                throw new IOException("bad zip: truncated header in extra field");
            }
        }
    }

    public static final EocdRecord Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(BufferedSource bufferedSource) throws IOException {
        int Wwwwwwwwwwwwwwwwwwww2 = bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE;
        int Wwwwwwwwwwwwwwwwwwww3 = bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE;
        long Wwwwwwwwwwwwwwwwwwww4 = bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE;
        if (Wwwwwwwwwwwwwwwwwwww4 == (bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE) && Wwwwwwwwwwwwwwwwwwww2 == 0 && Wwwwwwwwwwwwwwwwwwww3 == 0) {
            bufferedSource.skip(4L);
            return new EocdRecord(Wwwwwwwwwwwwwwwwwwww4, KeyboardMap.kValueMask & bufferedSource.Wwwwww(), bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE);
        }
        throw new IOException("unsupported zip: spanned");
    }

    @NotNull
    public static final ZipEntry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final BufferedSource bufferedSource) throws IOException {
        int Wwwwww2;
        final long j;
        if (bufferedSource.Wwwwww() == 33639248) {
            bufferedSource.skip(4L);
            short Wwwwwwwwwwwwwwwwwwww2 = bufferedSource.Wwwwwwwwwwwwwwwwwwww();
            int i = Wwwwwwwwwwwwwwwwwwww2 & UShort.MAX_VALUE;
            if ((Wwwwwwwwwwwwwwwwwwww2 & 1) == 0) {
                int Wwwwwwwwwwwwwwwwwwww3 = bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE;
                Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE, bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE);
                long Wwwwww3 = bufferedSource.Wwwwww() & KeyboardMap.kValueMask;
                final Ref.LongRef longRef = new Ref.LongRef();
                longRef.element = bufferedSource.Wwwwww() & KeyboardMap.kValueMask;
                final Ref.LongRef longRef2 = new Ref.LongRef();
                longRef2.element = bufferedSource.Wwwwww() & KeyboardMap.kValueMask;
                int Wwwwwwwwwwwwwwwwwwww4 = bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE;
                int Wwwwwwwwwwwwwwwwwwww5 = bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE;
                int Wwwwwwwwwwwwwwwwwwww6 = bufferedSource.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE;
                bufferedSource.skip(8L);
                final Ref.LongRef longRef3 = new Ref.LongRef();
                longRef3.element = bufferedSource.Wwwwww() & KeyboardMap.kValueMask;
                String Wwwwwwwwwwwwwwww2 = bufferedSource.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww4);
                if (!StringsKt.contains$default((CharSequence) Wwwwwwwwwwwwwwww2, (char) 0, false, 2, (Object) null)) {
                    if (longRef2.element == KeyboardMap.kValueMask) {
                        j = 8;
                    } else {
                        j = 0;
                    }
                    if (longRef.element == KeyboardMap.kValueMask) {
                        j += 8;
                    }
                    if (longRef3.element == KeyboardMap.kValueMask) {
                        j += 8;
                    }
                    final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource, Wwwwwwwwwwwwwwwwwwww5, new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipFilesKt$readEntry$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l) {
                            invoke(num.intValue(), l.longValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i2, long j2) {
                            if (i2 == 1) {
                                Ref.BooleanRef booleanRef2 = Ref.BooleanRef.this;
                                if (!booleanRef2.element) {
                                    booleanRef2.element = true;
                                    if (j2 >= j) {
                                        Ref.LongRef longRef4 = longRef2;
                                        long j3 = longRef4.element;
                                        if (j3 == KeyboardMap.kValueMask) {
                                            j3 = bufferedSource.Wwwwwwwwwwwwwwwwwww();
                                        }
                                        longRef4.element = j3;
                                        Ref.LongRef longRef5 = longRef;
                                        longRef5.element = longRef5.element == KeyboardMap.kValueMask ? bufferedSource.Wwwwwwwwwwwwwwwwwww() : 0L;
                                        Ref.LongRef longRef6 = longRef3;
                                        longRef6.element = longRef6.element == KeyboardMap.kValueMask ? bufferedSource.Wwwwwwwwwwwwwwwwwww() : 0L;
                                        return;
                                    }
                                    throw new IOException("bad zip: zip64 extra too short");
                                }
                                throw new IOException("bad zip: zip64 extra repeated");
                            }
                        }
                    });
                    if (j > 0 && !booleanRef.element) {
                        throw new IOException("bad zip: zip64 extra required but absent");
                    }
                    return new ZipEntry(Path.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion, "/", false, 1, null).Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww2), StringsKt.endsWith$default(Wwwwwwwwwwwwwwww2, "/", false, 2, (Object) null), bufferedSource.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww6), Wwwwww3, longRef.element, longRef2.element, Wwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, longRef3.element);
                }
                throw new IOException("bad zip: filename contains 0x00");
            }
            throw new IOException("unsupported zip: general purpose bit flag=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
        }
        throw new IOException("bad zip: expected " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(33639248) + " but was " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwww2));
    }

    @NotNull
    public static final ZipFileSystem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, @NotNull FileSystem fileSystem, @NotNull Function1<? super ZipEntry, Boolean> function1) throws IOException {
        int Wwwwww2;
        FileHandle Wwwwwwwwwwwwwwwwwwww2 = fileSystem.Wwwwwwwwwwwwwwwwwwww(path);
        try {
            long Kkkkkkkkkkkk2 = Wwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkk() - 22;
            if (Kkkkkkkkkkkk2 >= 0) {
                long max = Math.max(Kkkkkkkkkkkk2 - 65536, 0L);
                while (true) {
                    BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkk(Kkkkkkkkkkkk2));
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwww() == 101010256) {
                        EocdRecord Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        String Wwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.close();
                        long j = Kkkkkkkkkkkk2 - 20;
                        if (j > 0) {
                            BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkk(j));
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwww() == 117853008) {
                                int Wwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwww();
                                long Wwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwww();
                                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwww() == 1 && Wwwwww3 == 0) {
                                    BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkk(Wwwwwwwwwwwwwwwwwww2));
                                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwww() == 101075792) {
                                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                        Unit unit = Unit.INSTANCE;
                                        CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, null);
                                    } else {
                                        throw new IOException("bad zip: expected " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(101075792) + " but was " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwww2));
                                    }
                                } else {
                                    throw new IOException("unsupported zip: spanned");
                                }
                            }
                            Unit unit2 = Unit.INSTANCE;
                            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, null);
                        }
                        ArrayList arrayList = new ArrayList();
                        BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        for (long j2 = 0; j2 < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2; j2++) {
                            ZipEntry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5);
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() < Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                if (function1.invoke(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).booleanValue()) {
                                    arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                }
                            } else {
                                throw new IOException("bad zip: local file header offset >= central directory offset");
                            }
                        }
                        Unit unit3 = Unit.INSTANCE;
                        CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5, null);
                        ZipFileSystem zipFileSystem = new ZipFileSystem(path, fileSystem, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList), Wwwwwwwwwwwwwwww2);
                        CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwww2, null);
                        return zipFileSystem;
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.close();
                    Kkkkkkkkkkkk2--;
                    if (Kkkkkkkkkkkk2 < max) {
                        throw new IOException("not a zip: end of central directory signature not found");
                    }
                }
            } else {
                throw new IOException("not a zip: size=" + Wwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkk());
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwww2, th);
                throw th2;
            }
        }
    }

    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return "0x" + Integer.toString(i, CharsKt.checkRadix(16));
    }

    public static final Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        if (i2 == -1) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i >> 9) & 127) + 1980, ((i >> 5) & 15) - 1, i & 31, (i2 >> 11) & 31, (i2 >> 5) & 63, (i2 & 31) << 1);
        return Long.valueOf(gregorianCalendar.getTime().getTime());
    }

    public static final Map<Path, ZipEntry> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<ZipEntry> list) {
        Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Path.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion, "/", false, 1, null);
        Map<Path, ZipEntry> mutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, new ZipEntry(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null)));
        for (ZipEntry zipEntry : CollectionsKt.sortedWith(list, new Comparator() { // from class: okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((ZipEntry) t).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ((ZipEntry) t2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        })) {
            if (mutableMapOf.put(zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), zipEntry) == null) {
                while (true) {
                    Path Wwwwwwwwwwwwwwwwwwwwwwwwww2 = zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        ZipEntry zipEntry2 = mutableMapOf.get(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (zipEntry2 != null) {
                            zipEntry2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().add(zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(Wwwwwwwwwwwwwwwwwwwwwwwwww2, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null);
                        mutableMapOf.put(Wwwwwwwwwwwwwwwwwwwwwwwwww2, zipEntry3);
                        zipEntry3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().add(zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return mutableMapOf;
    }
}
