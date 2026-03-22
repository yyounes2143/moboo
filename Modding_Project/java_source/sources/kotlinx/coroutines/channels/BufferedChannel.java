package kotlinx.coroutines.channels;

import androidx.activity.Wwwwwwwwwwwwwwwww;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.common.primitives.Longs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KFunction;
import kotlin.time.DurationKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectClause2Impl;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Ò\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b1\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0004ì\u0001í\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\"\b\u0002\u0010\u0005\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\b¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\"J\u0016\u0010#\u001a\u00020\u00072\u0006\u0010!\u001a\u00028\u0000H\u0082@¢\u0006\u0002\u0010\"J4\u0010$\u001a\u00020\u00072\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010!\u001a\u00028\u00002\u0006\u0010'\u001a\u00020\u0010H\u0082@¢\u0006\u0002\u0010(J\"\u0010)\u001a\u00020\u0007*\u00020*2\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u0004H\u0002J#\u0010+\u001a\u00020\u00072\u0006\u0010!\u001a\u00028\u00002\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00070-H\u0002¢\u0006\u0002\u0010.J\u001d\u0010/\u001a\b\u0012\u0004\u0012\u00020\u0007002\u0006\u0010!\u001a\u00028\u0000H\u0016¢\u0006\u0004\b1\u00102J\u0018\u00103\u001a\u00020\u00192\u0006\u0010!\u001a\u00028\u0000H\u0090@¢\u0006\u0004\b4\u0010\"Jê\u0001\u00105\u001a\u0002H6\"\u0004\b\u0001\u001062\u0006\u0010!\u001a\u00028\u00002\b\u00107\u001a\u0004\u0018\u0001082\f\u00109\u001a\b\u0012\u0004\u0012\u0002H60:2<\u0010;\u001a8\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(?\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(@\u0012\u0004\u0012\u0002H60<2\f\u0010A\u001a\b\u0012\u0004\u0012\u0002H60:2h\b\u0002\u0010B\u001ab\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(?\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(@\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(!\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b('\u0012\u0004\u0012\u0002H60CH\u0082\b¢\u0006\u0002\u0010DJ\u001d\u0010E\u001a\b\u0012\u0004\u0012\u00020\u0007002\u0006\u0010!\u001a\u00028\u0000H\u0004¢\u0006\u0004\bF\u00102JX\u0010G\u001a\u00020\u00072\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010!\u001a\u00028\u00002\u0006\u0010'\u001a\u00020\u00102\u0006\u00107\u001a\u00020*2\f\u00109\u001a\b\u0012\u0004\u0012\u00020\u00070:2\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00070:H\u0082\b¢\u0006\u0002\u0010HJE\u0010I\u001a\u00020\u00042\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010!\u001a\u00028\u00002\u0006\u0010'\u001a\u00020\u00102\b\u00107\u001a\u0004\u0018\u0001082\u0006\u0010J\u001a\u00020\u0019H\u0002¢\u0006\u0002\u0010KJE\u0010L\u001a\u00020\u00042\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010!\u001a\u00028\u00002\u0006\u0010'\u001a\u00020\u00102\b\u00107\u001a\u0004\u0018\u0001082\u0006\u0010J\u001a\u00020\u0019H\u0002¢\u0006\u0002\u0010KJ\u0010\u0010M\u001a\u00020\u00192\u0006\u0010N\u001a\u00020\u0010H\u0003J\u0010\u0010O\u001a\u00020\u00192\u0006\u0010P\u001a\u00020\u0010H\u0002J\r\u0010M\u001a\u00020\u0019H\u0010¢\u0006\u0002\bQJ\u0019\u0010R\u001a\u00020\u0019*\u0002082\u0006\u0010!\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010SJ\b\u0010T\u001a\u00020\u0007H\u0014J\b\u0010U\u001a\u00020\u0007H\u0014J\u000e\u0010V\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010WJ,\u0010X\u001a\u00028\u00002\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u0010H\u0082@¢\u0006\u0002\u0010ZJ\"\u0010[\u001a\u00020\u0007*\u00020*2\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u0004H\u0002J\u0016\u0010\\\u001a\u00020\u00072\f\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000-H\u0002J\u0016\u0010]\u001a\b\u0012\u0004\u0012\u00028\u000000H\u0096@¢\u0006\u0004\b^\u0010WJ4\u0010_\u001a\b\u0012\u0004\u0012\u00028\u0000002\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u0010H\u0082@¢\u0006\u0004\b`\u0010ZJ\u001c\u0010a\u001a\u00020\u00072\u0012\u0010,\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u0000000-H\u0002J\u0015\u0010b\u001a\b\u0012\u0004\u0012\u00028\u000000H\u0016¢\u0006\u0004\bc\u0010dJ\u0010\u0010e\u001a\u00020\u00072\u0006\u0010f\u001a\u00020\u0010H\u0004J÷\u0001\u0010g\u001a\u0002H6\"\u0004\b\u0001\u001062\b\u00107\u001a\u0004\u0018\u0001082!\u0010h\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(!\u0012\u0004\u0012\u0002H60\u00062Q\u0010;\u001aM\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(?\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(@\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(Y\u0012\u0004\u0012\u0002H60i2\f\u0010A\u001a\b\u0012\u0004\u0012\u0002H60:2S\b\u0002\u0010B\u001aM\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(?\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(@\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(Y\u0012\u0004\u0012\u0002H60iH\u0082\b¢\u0006\u0002\u0010jJ`\u0010k\u001a\u00020\u00072\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u00102\u0006\u00107\u001a\u00020*2!\u0010h\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00070:H\u0082\bJ2\u0010l\u001a\u0004\u0018\u0001082\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u00102\b\u00107\u001a\u0004\u0018\u000108H\u0002J2\u0010m\u001a\u0004\u0018\u0001082\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u00102\b\u00107\u001a\u0004\u0018\u000108H\u0002J\"\u0010n\u001a\u00020\u0019*\u0002082\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u0004H\u0002J\b\u0010o\u001a\u00020\u0007H\u0002J&\u0010p\u001a\u00020\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010q\u001a\u00020\u0010H\u0002J&\u0010r\u001a\u00020\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010q\u001a\u00020\u0010H\u0002J\u0012\u0010s\u001a\u00020\u00072\b\b\u0002\u0010t\u001a\u00020\u0010H\u0002J\u0015\u0010u\u001a\u00020\u00072\u0006\u0010v\u001a\u00020\u0010H\u0000¢\u0006\u0002\bwJ\u001f\u0010~\u001a\u00020\u00072\u000b\u0010\u007f\u001a\u0007\u0012\u0002\b\u00030\u0080\u00012\b\u0010!\u001a\u0004\u0018\u000108H\u0014J$\u0010\u0081\u0001\u001a\u00020\u00072\u0006\u0010!\u001a\u00028\u00002\u000b\u0010\u007f\u001a\u0007\u0012\u0002\b\u00030\u0080\u0001H\u0002¢\u0006\u0003\u0010\u0082\u0001J!\u0010\u0083\u0001\u001a\u0004\u0018\u0001082\t\u0010\u0084\u0001\u001a\u0004\u0018\u0001082\t\u0010\u0085\u0001\u001a\u0004\u0018\u000108H\u0002J!\u0010\u0091\u0001\u001a\u00020\u00072\u000b\u0010\u007f\u001a\u0007\u0012\u0002\b\u00030\u0080\u00012\t\u0010\u0084\u0001\u001a\u0004\u0018\u000108H\u0002J\u0016\u0010\u0092\u0001\u001a\u00020\u00072\u000b\u0010\u007f\u001a\u0007\u0012\u0002\b\u00030\u0080\u0001H\u0002J!\u0010\u0093\u0001\u001a\u0004\u0018\u0001082\t\u0010\u0084\u0001\u001a\u0004\u0018\u0001082\t\u0010\u0085\u0001\u001a\u0004\u0018\u000108H\u0002J!\u0010\u0094\u0001\u001a\u0004\u0018\u0001082\t\u0010\u0084\u0001\u001a\u0004\u0018\u0001082\t\u0010\u0085\u0001\u001a\u0004\u0018\u000108H\u0002J!\u0010\u0095\u0001\u001a\u0004\u0018\u0001082\t\u0010\u0084\u0001\u001a\u0004\u0018\u0001082\t\u0010\u0085\u0001\u001a\u0004\u0018\u000108H\u0002J\u0011\u0010\u009d\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u009e\u0001H\u0096\u0002J\t\u0010¨\u0001\u001a\u00020\u0007H\u0014J\u0015\u0010©\u0001\u001a\u00020\u00192\n\u0010ª\u0001\u001a\u0005\u0018\u00010\u0099\u0001H\u0016J\u0013\u0010«\u0001\u001a\u00020\u00192\n\u0010ª\u0001\u001a\u0005\u0018\u00010\u0099\u0001J\u0007\u0010«\u0001\u001a\u00020\u0007J \u0010«\u0001\u001a\u00020\u00072\u0011\u0010ª\u0001\u001a\f\u0018\u00010¬\u0001j\u0005\u0018\u0001`\u00ad\u0001¢\u0006\u0003\u0010®\u0001J\u001b\u0010¯\u0001\u001a\u00020\u00192\n\u0010ª\u0001\u001a\u0005\u0018\u00010\u0099\u0001H\u0010¢\u0006\u0003\b°\u0001J\u001e\u0010±\u0001\u001a\u00020\u00192\n\u0010ª\u0001\u001a\u0005\u0018\u00010\u0099\u00012\u0007\u0010«\u0001\u001a\u00020\u0019H\u0014J\t\u0010²\u0001\u001a\u00020\u0007H\u0002J1\u0010³\u0001\u001a\u00020\u00072&\u0010´\u0001\u001a!\u0012\u0017\u0012\u0015\u0018\u00010\u0099\u0001¢\u0006\r\b=\u0012\t\b>\u0012\u0005\b\b(ª\u0001\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\t\u0010µ\u0001\u001a\u00020\u0007H\u0002J\t\u0010¶\u0001\u001a\u00020\u0007H\u0002J\t\u0010·\u0001\u001a\u00020\u0007H\u0002J\t\u0010¸\u0001\u001a\u00020\u0007H\u0002J\u0018\u0010º\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0007\u0010»\u0001\u001a\u00020\u0010H\u0002J\u0012\u0010¼\u0001\u001a\u00020\u00072\u0007\u0010»\u0001\u001a\u00020\u0010H\u0002J\u000f\u0010½\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0002J\u0018\u0010¾\u0001\u001a\u00020\u00102\r\u0010¿\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0002J\u0018\u0010À\u0001\u001a\u00020\u00072\r\u0010¿\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0002J \u0010Á\u0001\u001a\u00020\u00072\r\u0010¿\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\r\u0010Â\u0001\u001a\u00020\u0007*\u00020*H\u0002J\r\u0010Ã\u0001\u001a\u00020\u0007*\u00020*H\u0002J\u0016\u0010Ä\u0001\u001a\u00020\u0007*\u00020*2\u0007\u0010Å\u0001\u001a\u00020\u0019H\u0002J\u001b\u0010Í\u0001\u001a\u00020\u00192\u0007\u0010Î\u0001\u001a\u00020\u00102\u0007\u0010Ê\u0001\u001a\u00020\u0019H\u0002J\u000f\u0010Ñ\u0001\u001a\u00020\u0019H\u0000¢\u0006\u0003\bÒ\u0001J'\u0010Ó\u0001\u001a\u00020\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010v\u001a\u00020\u0010H\u0002J)\u0010Ô\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001d2\u0007\u0010Õ\u0001\u001a\u00020\u00102\r\u0010Ö\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0002J)\u0010×\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001d2\u0007\u0010Õ\u0001\u001a\u00020\u00102\r\u0010Ö\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0002J2\u0010Ø\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001d2\u0007\u0010Õ\u0001\u001a\u00020\u00102\r\u0010Ö\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0007\u0010Ù\u0001\u001a\u00020\u0010H\u0002J!\u0010Ú\u0001\u001a\u00020\u00072\u0007\u0010Õ\u0001\u001a\u00020\u00102\r\u0010Ö\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0002J\u0012\u0010Û\u0001\u001a\u00020\u00072\u0007\u0010Ü\u0001\u001a\u00020\u0010H\u0002J\u0012\u0010Ý\u0001\u001a\u00020\u00072\u0007\u0010Ü\u0001\u001a\u00020\u0010H\u0002J\n\u0010Þ\u0001\u001a\u00030ß\u0001H\u0016J\u0010\u0010à\u0001\u001a\u00030ß\u0001H\u0000¢\u0006\u0003\bá\u0001J\u0007\u0010â\u0001\u001a\u00020\u0007JD\u0010ã\u0001\u001a#\u0012\u0005\u0012\u00030\u0099\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u000000\u0012\u0005\u0012\u00030\u009a\u0001\u0012\u0004\u0012\u00020\u00070ä\u0001*\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00028\u0000`\bH\u0002J4\u0010å\u0001\u001a\u00020\u00072\b\u0010ª\u0001\u001a\u00030\u0099\u00012\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u0000002\b\u0010æ\u0001\u001a\u00030\u009a\u0001H\u0002¢\u0006\u0006\bç\u0001\u0010è\u0001JM\u0010é\u0001\u001a\u001e\u0012\u0005\u0012\u00030\u0099\u0001\u0012\u0006\u0012\u0004\u0018\u000108\u0012\u0005\u0012\u00030\u009a\u0001\u0012\u0004\u0012\u00020\u00070i*\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00028\u0000`\b2\u0006\u0010!\u001a\u00028\u0000H\u0002¢\u0006\u0003\u0010ê\u0001J>\u0010é\u0001\u001a\u001d\u0012\u0005\u0012\u00030\u0099\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0005\u0012\u00030\u009a\u0001\u0012\u0004\u0012\u00020\u00070ä\u0001*\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00028\u0000`\bH\u0002J+\u0010ë\u0001\u001a\u00020\u00072\b\u0010ª\u0001\u001a\u00030\u0099\u00012\u0006\u0010!\u001a\u00028\u00002\b\u0010æ\u0001\u001a\u00030\u009a\u0001H\u0002¢\u0006\u0003\u0010è\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0005\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\b8\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\t\u0010\u000b\u001a\u00020\fX\u0082\u0004R\t\u0010\r\u001a\u00020\fX\u0082\u0004R\t\u0010\u000e\u001a\u00020\fX\u0082\u0004R\u0014\u0010\u000f\u001a\u00020\u00108@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00108@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0012R\t\u0010\u0017\u001a\u00020\fX\u0082\u0004R\u0014\u0010\u0018\u001a\u00020\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001aR\u0015\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001d0\u001cX\u0082\u0004R\u0015\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001d0\u001cX\u0082\u0004R\u0015\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001d0\u001cX\u0082\u0004R,\u0010x\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000y8VX\u0096\u0004¢\u0006\f\u0012\u0004\bz\u0010{\u001a\u0004\b|\u0010}R%\u0010\u0086\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0087\u00018VX\u0096\u0004¢\u0006\u000f\u0012\u0005\b\u0088\u0001\u0010{\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R+\u0010\u008b\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u0000000\u0087\u00018VX\u0096\u0004¢\u0006\u000f\u0012\u0005\b\u008c\u0001\u0010{\u001a\u0006\b\u008d\u0001\u0010\u008a\u0001R'\u0010\u008e\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0087\u00018VX\u0096\u0004¢\u0006\u000f\u0012\u0005\b\u008f\u0001\u0010{\u001a\u0006\b\u0090\u0001\u0010\u008a\u0001R\u008b\u0001\u0010\u0096\u0001\u001aw\u0012\u0018\u0012\u0016\u0012\u0002\b\u00030\u0080\u0001¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(\u007f\u0012\u0016\u0012\u0014\u0018\u000108¢\u0006\r\b=\u0012\t\b>\u0012\u0005\b\b(\u0097\u0001\u0012\u0016\u0012\u0014\u0018\u000108¢\u0006\r\b=\u0012\t\b>\u0012\u0005\b\b(\u0098\u0001\u0012 \u0012\u001e\u0012\u0005\u0012\u00030\u0099\u0001\u0012\u0006\u0012\u0004\u0018\u000108\u0012\u0005\u0012\u00030\u009a\u0001\u0012\u0004\u0012\u00020\u00070i\u0018\u00010ij\u0005\u0018\u0001`\u009b\u0001X\u0082\u0004¢\u0006\t\n\u0000\u0012\u0005\b\u009c\u0001\u0010{R\u0012\u0010\u009f\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001080\u001cX\u0082\u0004R\u001a\u0010 \u0001\u001a\u0005\u0018\u00010\u0099\u00018DX\u0084\u0004¢\u0006\b\u001a\u0006\b¡\u0001\u0010¢\u0001R\u0018\u0010£\u0001\u001a\u00030\u0099\u00018DX\u0084\u0004¢\u0006\b\u001a\u0006\b¤\u0001\u0010¢\u0001R\u0018\u0010¥\u0001\u001a\u00030\u0099\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b¦\u0001\u0010¢\u0001R\u0012\u0010§\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001080\u001cX\u0082\u0004R\u0016\u0010¹\u0001\u001a\u00020\u00198TX\u0094\u0004¢\u0006\u0007\u001a\u0005\b¹\u0001\u0010\u001aR\u001d\u0010Æ\u0001\u001a\u00020\u00198VX\u0097\u0004¢\u0006\u000e\u0012\u0005\bÇ\u0001\u0010{\u001a\u0005\bÆ\u0001\u0010\u001aR\u001b\u0010È\u0001\u001a\u00020\u0019*\u00020\u00108BX\u0082\u0004¢\u0006\b\u001a\u0006\bÈ\u0001\u0010É\u0001R\u001d\u0010Ê\u0001\u001a\u00020\u00198VX\u0097\u0004¢\u0006\u000e\u0012\u0005\bË\u0001\u0010{\u001a\u0005\bÊ\u0001\u0010\u001aR\u001b\u0010Ì\u0001\u001a\u00020\u0019*\u00020\u00108BX\u0082\u0004¢\u0006\b\u001a\u0006\bÌ\u0001\u0010É\u0001R\u001d\u0010Ï\u0001\u001a\u00020\u00198VX\u0097\u0004¢\u0006\u000e\u0012\u0005\bÐ\u0001\u0010{\u001a\u0005\bÏ\u0001\u0010\u001a¨\u0006î\u0001"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/Channel;", "capacity", "", "onUndeliveredElement", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "<init>", "(ILkotlin/jvm/functions/Function1;)V", "sendersAndCloseStatus", "Lkotlinx/atomicfu/AtomicLong;", "receivers", "bufferEnd", "sendersCounter", "", "getSendersCounter$kotlinx_coroutines_core", "()J", "receiversCounter", "getReceiversCounter$kotlinx_coroutines_core", "bufferEndCounter", "getBufferEndCounter", "completedExpandBuffersAndPauseFlag", "isRendezvousOrUnlimited", "", "()Z", "sendSegment", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/channels/ChannelSegment;", "receiveSegment", "bufferEndSegment", "send", "element", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onClosedSend", "sendOnNoWaiterSuspend", "segment", FirebaseAnalytics.Param.INDEX, CmcdData.Factory.STREAMING_FORMAT_SS, "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "prepareSenderForSuspension", "Lkotlinx/coroutines/Waiter;", "onClosedSendOnNoWaiterSuspend", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V", "trySend", "Lkotlinx/coroutines/channels/ChannelResult;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "sendBroadcast", "sendBroadcast$kotlinx_coroutines_core", "sendImpl", "R", "waiter", "", "onRendezvousOrBuffered", "Lkotlin/Function0;", "onSuspend", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "segm", CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT, "onClosed", "onNoWaiterSuspend", "Lkotlin/Function4;", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "trySendDropOldest", "trySendDropOldest-JP2dKIU", "sendImplOnNoWaiter", "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlinx/coroutines/Waiter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "updateCellSend", "closed", "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I", "updateCellSendSlow", "shouldSendSuspend", "curSendersAndCloseStatus", "bufferOrRendezvousSend", "curSenders", "shouldSendSuspend$kotlinx_coroutines_core", "tryResumeReceiver", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "onReceiveEnqueued", "onReceiveDequeued", "receive", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "receiveOnNoWaiterSuspend", "r", "(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "prepareReceiverForSuspension", "onClosedReceiveOnNoWaiterSuspend", "receiveCatching", "receiveCatching-JP2dKIU", "receiveCatchingOnNoWaiterSuspend", "receiveCatchingOnNoWaiterSuspend-GKJJFZk", "onClosedReceiveCatchingOnNoWaiterSuspend", "tryReceive", "tryReceive-PtdJZtk", "()Ljava/lang/Object;", "dropFirstElementUntilTheSpecifiedCellIsInTheBuffer", "globalCellIndex", "receiveImpl", "onElementRetrieved", "Lkotlin/Function3;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "receiveImplOnNoWaiter", "updateCellReceive", "updateCellReceiveSlow", "tryResumeSender", "expandBuffer", "updateCellExpandBuffer", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "updateCellExpandBufferSlow", "incCompletedExpandBufferAttempts", "nAttempts", "waitExpandBufferCompletion", "globalIndex", "waitExpandBufferCompletion$kotlinx_coroutines_core", "onSend", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend$annotations", "()V", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "registerSelectForSend", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "onClosedSelectOnSend", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V", "processResultSelectSend", "ignoredParam", "selectResult", "onReceive", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive$annotations", "getOnReceive", "()Lkotlinx/coroutines/selects/SelectClause1;", "onReceiveCatching", "getOnReceiveCatching$annotations", "getOnReceiveCatching", "onReceiveOrNull", "getOnReceiveOrNull$annotations", "getOnReceiveOrNull", "registerSelectForReceive", "onClosedSelectOnReceive", "processResultSelectReceive", "processResultSelectReceiveOrNull", "processResultSelectReceiveCatching", "onUndeliveredElementReceiveCancellationConstructor", "param", "internalResult", "", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/selects/OnCancellationConstructor;", "getOnUndeliveredElementReceiveCancellationConstructor$annotations", "iterator", "Lkotlinx/coroutines/channels/ChannelIterator;", "_closeCause", "closeCause", "getCloseCause", "()Ljava/lang/Throwable;", "sendException", "getSendException", "receiveException", "getReceiveException", "closeHandler", "onClosedIdempotent", "close", "cause", "cancel", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Ljava/util/concurrent/CancellationException;)V", "cancelImpl", "cancelImpl$kotlinx_coroutines_core", "closeOrCancelImpl", "invokeCloseHandler", "invokeOnClose", "handler", "markClosed", "markCancelled", "markCancellationStarted", "completeCloseOrCancel", "isConflatedDropOldest", "completeClose", "sendersCur", "completeCancel", "closeLinkedList", "markAllEmptyCellsAsClosed", "lastSegment", "removeUnprocessedElements", "cancelSuspendedReceiveRequests", "resumeReceiverOnClosedChannel", "resumeSenderOnCancelledChannel", "resumeWaiterOnClosedChannel", "receiver", "isClosedForSend", "isClosedForSend$annotations", "isClosedForSend0", "(J)Z", "isClosedForReceive", "isClosedForReceive$annotations", "isClosedForReceive0", "isClosed", "sendersAndCloseStatusCur", "isEmpty", "isEmpty$annotations", "hasElements", "hasElements$kotlinx_coroutines_core", "isCellNonEmpty", "findSegmentSend", "id", "startFrom", "findSegmentReceive", "findSegmentBufferEnd", "currentBufferEndCounter", "moveSegmentBufferEndToSpecifiedOrLast", "updateSendersCounterIfLower", "value", "updateReceiversCounterIfLower", "toString", "", "toStringDebug", "toStringDebug$kotlinx_coroutines_core", "checkSegmentStructureInvariants", "bindCancellationFunResult", "Lkotlin/reflect/KFunction3;", "onCancellationChannelResultImplDoNotCall", "context", "onCancellationChannelResultImplDoNotCall-5_sEAP8", "(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", "bindCancellationFun", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;", "onCancellationImplDoNotCall", "SendBroadcast", "BufferedChannelIterator", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3116:1\n270#1,6:3119\n277#1,68:3126\n394#1,18:3217\n241#1:3235\n266#1,10:3236\n277#1,48:3247\n415#1:3295\n331#1,14:3296\n419#1,3:3311\n241#1:3324\n266#1,10:3325\n277#1,68:3336\n241#1:3414\n266#1,10:3415\n277#1,68:3426\n241#1:3498\n266#1,10:3499\n277#1,68:3510\n241#1:3579\n266#1,10:3580\n277#1,68:3591\n906#1,52:3661\n984#1,8:3717\n878#1:3725\n902#1,33:3726\n994#1:3759\n936#1,14:3760\n955#1,3:3775\n999#1,6:3778\n906#1,52:3792\n984#1,8:3848\n878#1:3856\n902#1,33:3857\n994#1:3890\n936#1,14:3891\n955#1,3:3906\n999#1,6:3909\n878#1:3924\n902#1,48:3925\n955#1,3:3974\n878#1:3977\n902#1,48:3978\n955#1,3:4027\n241#1:4039\n266#1,10:4040\n277#1,68:4051\n878#1:4120\n902#1,48:4121\n955#1,3:4170\n1#2:3117\n3099#3:3118\n3099#3:3125\n3099#3:3246\n3099#3:3335\n3099#3:3425\n3099#3:3497\n3099#3:3509\n3099#3:3590\n3099#3:3660\n3099#3:3923\n3099#3:4030\n3099#3:4031\n3113#3:4032\n3113#3:4033\n3112#3:4034\n3112#3:4035\n3112#3:4036\n3113#3:4037\n3112#3:4038\n3099#3:4050\n3100#3:4173\n3099#3:4174\n3099#3:4175\n3099#3:4176\n3100#3:4177\n3099#3:4178\n3100#3:4201\n3099#3:4202\n3099#3:4203\n3100#3:4204\n3099#3:4254\n3100#3:4255\n3100#3:4256\n3100#3:4274\n3100#3:4275\n426#4,9:3194\n435#4,2:3211\n444#4,4:3213\n448#4,8:3314\n426#4,9:3405\n435#4,2:3495\n444#4,4:3713\n448#4,8:3784\n444#4,4:3844\n448#4,8:3915\n204#5:3203\n205#5:3206\n204#5:3207\n205#5:3210\n57#6,2:3204\n57#6,2:3208\n57#6,2:3322\n266#7:3310\n266#7:3404\n266#7:3494\n266#7:3578\n266#7:3659\n266#7:4119\n902#8:3774\n902#8:3905\n902#8:3973\n902#8:4026\n902#8:4169\n33#9,11:4179\n33#9,11:4190\n68#10,3:4205\n42#10,8:4208\n68#10,3:4216\n42#10,8:4219\n42#10,8:4227\n68#10,3:4235\n42#10,8:4238\n42#10,8:4246\n774#11:4257\n865#11,2:4258\n2318#11,14:4260\n774#11:4276\n865#11,2:4277\n2318#11,14:4279\n774#11:4293\n865#11,2:4294\n2318#11,14:4296\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n110#1:3119,6\n110#1:3126,68\n151#1:3217,18\n151#1:3235\n151#1:3236,10\n151#1:3247,48\n151#1:3295\n151#1:3296,14\n151#1:3311,3\n191#1:3324\n191#1:3325,10\n191#1:3336,68\n222#1:3414\n222#1:3415,10\n222#1:3426,68\n353#1:3498\n353#1:3499,10\n353#1:3510,68\n411#1:3579\n411#1:3580,10\n411#1:3591,68\n687#1:3661,52\n716#1:3717,8\n716#1:3725\n716#1:3726,33\n716#1:3759\n716#1:3760,14\n716#1:3775,3\n716#1:3778,6\n752#1:3792,52\n768#1:3848,8\n768#1:3856\n768#1:3857,33\n768#1:3890\n768#1:3891,14\n768#1:3906,3\n768#1:3909,6\n801#1:3924\n801#1:3925,48\n801#1:3974,3\n991#1:3977\n991#1:3978,48\n991#1:4027,3\n1484#1:4039\n1484#1:4040,10\n1484#1:4051,68\n1532#1:4120\n1532#1:4121,48\n1532#1:4170,3\n67#1:3118\n110#1:3125\n151#1:3246\n191#1:3335\n222#1:3425\n275#1:3497\n353#1:3509\n411#1:3590\n626#1:3660\n791#1:3923\n1027#1:4030\n1076#1:4031\n1394#1:4032\n1396#1:4033\n1426#1:4034\n1436#1:4035\n1445#1:4036\n1446#1:4037\n1453#1:4038\n1484#1:4050\n1898#1:4173\n1900#1:4174\n1902#1:4175\n1915#1:4176\n1926#1:4177\n1927#1:4178\n2229#1:4201\n2242#1:4202\n2252#1:4203\n2255#1:4204\n2572#1:4254\n2574#1:4255\n2599#1:4256\n2661#1:4274\n2662#1:4275\n131#1:3194,9\n131#1:3211,2\n150#1:3213,4\n150#1:3314,8\n218#1:3405,9\n218#1:3495,2\n715#1:3713,4\n715#1:3784,8\n766#1:3844,4\n766#1:3915,8\n135#1:3203\n135#1:3206\n138#1:3207\n138#1:3210\n135#1:3204,2\n138#1:3208,2\n180#1:3322,2\n151#1:3310\n191#1:3404\n222#1:3494\n353#1:3578\n411#1:3659\n1484#1:4119\n716#1:3774\n768#1:3905\n801#1:3973\n991#1:4026\n1532#1:4169\n2131#1:4179,11\n2186#1:4190,11\n2394#1:4205,3\n2394#1:4208,8\n2449#1:4216,3\n2449#1:4219,8\n2468#1:4227,8\n2498#1:4235,3\n2498#1:4238,8\n2559#1:4246,8\n2608#1:4257\n2608#1:4258,2\n2609#1:4260,14\n2673#1:4276\n2673#1:4277,2\n2674#1:4279,14\n2714#1:4293\n2714#1:4294,2\n2715#1:4296,14\n*E\n"})
/* loaded from: classes7.dex */
public class BufferedChannel<E> implements Channel<E> {
    private volatile /* synthetic */ Object _closeCause$volatile;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    private final int capacity;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    @JvmField
    @Nullable
    public final Function1<E, Unit> onUndeliveredElement;
    @Nullable
    private final Function3<SelectInstance<?>, Object, Object, Function3<Throwable, Object, CoroutineContext, Unit>> onUndeliveredElementReceiveCancellationConstructor;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;
    private static final /* synthetic */ AtomicLongFieldUpdater sendersAndCloseStatus$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater receivers$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater bufferEnd$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater completedExpandBuffersAndPauseFlag$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater sendSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater receiveSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater bufferEndSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _closeCause$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater closeHandler$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000e\u0010\n\u001a\u00020\tH\u0096B¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\tH\u0002J,\u0010\r\u001a\u00020\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@¢\u0006\u0002\u0010\u0014J\u001c\u0010\u0015\u001a\u00020\u00162\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u00172\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0018\u001a\u00020\u0016H\u0002J\u000e\u0010\u0019\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00028\u0000¢\u0006\u0002\u0010\u001dJ\u0006\u0010\u001e\u001a\u00020\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;", "Lkotlinx/coroutines/channels/ChannelIterator;", "Lkotlinx/coroutines/Waiter;", "<init>", "(Lkotlinx/coroutines/channels/BufferedChannel;)V", "receiveResult", "", "continuation", "Lkotlinx/coroutines/CancellableContinuationImpl;", "", "hasNext", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onClosedHasNext", "hasNextOnNoWaiterSuspend", "segment", "Lkotlinx/coroutines/channels/ChannelSegment;", FirebaseAnalytics.Param.INDEX, "", "r", "", "(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "invokeOnCancellation", "", "Lkotlinx/coroutines/internal/Segment;", "onClosedHasNextNoWaiterSuspend", "next", "()Ljava/lang/Object;", "tryResumeHasNext", "element", "(Ljava/lang/Object;)Z", "tryResumeHasNextOnClosedChannel", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3116:1\n906#2,52:3117\n984#2,8:3173\n878#2:3181\n902#2,33:3182\n994#2:3215\n936#2,14:3216\n955#2,3:3231\n999#2,6:3234\n444#3,4:3169\n448#3,8:3240\n902#4:3230\n57#5,2:3248\n57#5,2:3251\n1#6:3250\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1619#1:3117,52\n1657#1:3173,8\n1657#1:3181\n1657#1:3182,33\n1657#1:3215\n1657#1:3216,14\n1657#1:3231,3\n1657#1:3234,6\n1655#1:3169,4\n1655#1:3240,8\n1657#1:3230\n1693#1:3248,2\n1741#1:3251,2\n*E\n"})
    /* loaded from: classes7.dex */
    public final class BufferedChannelIterator implements ChannelIterator<E>, Waiter {
        @Nullable
        private CancellableContinuationImpl<? super Boolean> continuation;
        @Nullable
        private Object receiveResult;

        public BufferedChannelIterator() {
            Symbol symbol;
            symbol = BufferedChannelKt.NO_RECEIVE_RESULT;
            this.receiveResult = symbol;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object hasNextOnNoWaiterSuspend(ChannelSegment<E> channelSegment, int i, long j, Continuation<? super Boolean> continuation) {
            Symbol symbol;
            Symbol symbol2;
            Boolean boxBoolean;
            ChannelSegment channelSegment2;
            Symbol symbol3;
            Symbol symbol4;
            Symbol symbol5;
            BufferedChannel<E> bufferedChannel = BufferedChannel.this;
            CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(continuation));
            try {
                this.continuation = orCreateCancellableContinuation;
                try {
                    Object updateCellReceive = bufferedChannel.updateCellReceive(channelSegment, i, j, this);
                    symbol = BufferedChannelKt.SUSPEND;
                    if (updateCellReceive == symbol) {
                        bufferedChannel.prepareReceiverForSuspension(this, channelSegment, i);
                    } else {
                        symbol2 = BufferedChannelKt.FAILED;
                        Function3 function3 = null;
                        if (updateCellReceive == symbol2) {
                            if (j < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment.cleanPrev();
                            }
                            ChannelSegment channelSegment3 = (ChannelSegment) BufferedChannel.access$getReceiveSegment$volatile$FU().get(bufferedChannel);
                            while (true) {
                                if (bufferedChannel.isClosedForReceive()) {
                                    onClosedHasNextNoWaiterSuspend();
                                    break;
                                }
                                long andIncrement = BufferedChannel.access$getReceivers$volatile$FU().getAndIncrement(bufferedChannel);
                                int i2 = BufferedChannelKt.SEGMENT_SIZE;
                                long j2 = andIncrement / i2;
                                int i3 = (int) (andIncrement % i2);
                                if (channelSegment3.id != j2) {
                                    channelSegment2 = bufferedChannel.findSegmentReceive(j2, channelSegment3);
                                    if (channelSegment2 == null) {
                                    }
                                } else {
                                    channelSegment2 = channelSegment3;
                                }
                                Object updateCellReceive2 = bufferedChannel.updateCellReceive(channelSegment2, i3, andIncrement, this);
                                symbol3 = BufferedChannelKt.SUSPEND;
                                if (updateCellReceive2 == symbol3) {
                                    bufferedChannel.prepareReceiverForSuspension(this, channelSegment2, i3);
                                    break;
                                }
                                symbol4 = BufferedChannelKt.FAILED;
                                if (updateCellReceive2 != symbol4) {
                                    symbol5 = BufferedChannelKt.SUSPEND_NO_WAITER;
                                    if (updateCellReceive2 != symbol5) {
                                        channelSegment2.cleanPrev();
                                        this.receiveResult = updateCellReceive2;
                                        this.continuation = null;
                                        boxBoolean = Boxing.boxBoolean(true);
                                        Function1<E, Unit> function1 = bufferedChannel.onUndeliveredElement;
                                        if (function1 != null) {
                                            function3 = bufferedChannel.bindCancellationFun(function1, updateCellReceive2);
                                        }
                                    } else {
                                        throw new IllegalStateException("unexpected");
                                    }
                                } else {
                                    if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                        channelSegment2.cleanPrev();
                                    }
                                    channelSegment3 = channelSegment2;
                                }
                            }
                        } else {
                            channelSegment.cleanPrev();
                            this.receiveResult = updateCellReceive;
                            this.continuation = null;
                            boxBoolean = Boxing.boxBoolean(true);
                            Function1<E, Unit> function12 = bufferedChannel.onUndeliveredElement;
                            if (function12 != null) {
                                function3 = bufferedChannel.bindCancellationFun(function12, updateCellReceive);
                            }
                        }
                        orCreateCancellableContinuation.resume((CancellableContinuationImpl) boxBoolean, (Function3<? super Throwable, ? super CancellableContinuationImpl, ? super CoroutineContext, Unit>) function3);
                    }
                    Object result = orCreateCancellableContinuation.getResult();
                    if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(continuation);
                    }
                    return result;
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        private final boolean onClosedHasNext() {
            this.receiveResult = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                return false;
            }
            throw StackTraceRecoveryKt.recoverStackTrace(closeCause);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void onClosedHasNextNoWaiterSuspend() {
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.continuation;
            this.continuation = null;
            this.receiveResult = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                Result.Companion companion = Result.Companion;
                cancellableContinuationImpl.resumeWith(Result.m438constructorimpl(Boolean.FALSE));
                return;
            }
            Result.Companion companion2 = Result.Companion;
            cancellableContinuationImpl.resumeWith(Result.m438constructorimpl(ResultKt.createFailure(closeCause)));
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Nullable
        public Object hasNext(@NotNull Continuation<? super Boolean> continuation) {
            Symbol symbol;
            ChannelSegment<E> channelSegment;
            Symbol symbol2;
            Symbol symbol3;
            Symbol symbol4;
            Object obj = this.receiveResult;
            symbol = BufferedChannelKt.NO_RECEIVE_RESULT;
            boolean z = true;
            if (obj == symbol || this.receiveResult == BufferedChannelKt.getCHANNEL_CLOSED()) {
                BufferedChannel<E> bufferedChannel = BufferedChannel.this;
                ChannelSegment<E> channelSegment2 = (ChannelSegment) BufferedChannel.access$getReceiveSegment$volatile$FU().get(bufferedChannel);
                while (!bufferedChannel.isClosedForReceive()) {
                    long andIncrement = BufferedChannel.access$getReceivers$volatile$FU().getAndIncrement(bufferedChannel);
                    int i = BufferedChannelKt.SEGMENT_SIZE;
                    long j = andIncrement / i;
                    int i2 = (int) (andIncrement % i);
                    if (channelSegment2.id != j) {
                        channelSegment = bufferedChannel.findSegmentReceive(j, channelSegment2);
                        if (channelSegment == null) {
                            continue;
                        }
                    } else {
                        channelSegment = channelSegment2;
                    }
                    Object updateCellReceive = bufferedChannel.updateCellReceive(channelSegment, i2, andIncrement, null);
                    symbol2 = BufferedChannelKt.SUSPEND;
                    if (updateCellReceive != symbol2) {
                        symbol3 = BufferedChannelKt.FAILED;
                        if (updateCellReceive != symbol3) {
                            symbol4 = BufferedChannelKt.SUSPEND_NO_WAITER;
                            if (updateCellReceive == symbol4) {
                                return hasNextOnNoWaiterSuspend(channelSegment, i2, andIncrement, continuation);
                            }
                            channelSegment.cleanPrev();
                            this.receiveResult = updateCellReceive;
                            return Boxing.boxBoolean(z);
                        }
                        if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                            channelSegment.cleanPrev();
                        }
                        channelSegment2 = channelSegment;
                    } else {
                        throw new IllegalStateException("unreachable");
                    }
                }
                z = onClosedHasNext();
            }
            return Boxing.boxBoolean(z);
        }

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(@NotNull Segment<?> segment, int i) {
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.continuation;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.invokeOnCancellation(segment, i);
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
        @JvmName(name = "next")
        public /* synthetic */ Object next(Continuation continuation) {
            return ChannelIterator.DefaultImpls.next(this, continuation);
        }

        public final boolean tryResumeHasNext(E e) {
            boolean tryResume0;
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.continuation;
            Function3 function3 = null;
            this.continuation = null;
            this.receiveResult = e;
            Boolean bool = Boolean.TRUE;
            BufferedChannel<E> bufferedChannel = BufferedChannel.this;
            Function1<E, Unit> function1 = bufferedChannel.onUndeliveredElement;
            if (function1 != null) {
                function3 = bufferedChannel.bindCancellationFun(function1, e);
            }
            tryResume0 = BufferedChannelKt.tryResume0(cancellableContinuationImpl, bool, function3);
            return tryResume0;
        }

        public final void tryResumeHasNextOnClosedChannel() {
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.continuation;
            this.continuation = null;
            this.receiveResult = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                Result.Companion companion = Result.Companion;
                cancellableContinuationImpl.resumeWith(Result.m438constructorimpl(Boolean.FALSE));
                return;
            }
            Result.Companion companion2 = Result.Companion;
            cancellableContinuationImpl.resumeWith(Result.m438constructorimpl(ResultKt.createFailure(closeCause)));
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public E next() {
            Symbol symbol;
            Symbol symbol2;
            E e = (E) this.receiveResult;
            symbol = BufferedChannelKt.NO_RECEIVE_RESULT;
            if (e != symbol) {
                symbol2 = BufferedChannelKt.NO_RECEIVE_RESULT;
                this.receiveResult = symbol2;
                if (e != BufferedChannelKt.getCHANNEL_CLOSED()) {
                    return e;
                }
                throw StackTraceRecoveryKt.recoverStackTrace(BufferedChannel.this.getReceiveException());
            }
            throw new IllegalStateException("`hasNext()` has not been invoked");
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\u0006\u0010\r\u001a\u00020\u000eH\u0096\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;", "Lkotlinx/coroutines/Waiter;", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "<init>", "(Lkotlinx/coroutines/CancellableContinuation;)V", "getCont", "()Lkotlinx/coroutines/CancellableContinuation;", "invokeOnCancellation", "", "segment", "Lkotlinx/coroutines/internal/Segment;", FirebaseAnalytics.Param.INDEX, "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class SendBroadcast implements Waiter {
        private final /* synthetic */ CancellableContinuationImpl<Boolean> $$delegate_0;
        @NotNull
        private final CancellableContinuation<Boolean> cont;

        /* JADX WARN: Multi-variable type inference failed */
        public SendBroadcast(@NotNull CancellableContinuation<? super Boolean> cancellableContinuation) {
            this.$$delegate_0 = (CancellableContinuationImpl) cancellableContinuation;
            this.cont = cancellableContinuation;
        }

        @NotNull
        public final CancellableContinuation<Boolean> getCont() {
            return this.cont;
        }

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(@NotNull Segment<?> segment, int i) {
            this.$$delegate_0.invokeOnCancellation(segment, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BufferedChannel(int i, @Nullable Function1<? super E, Unit> function1) {
        long initialBufferEnd;
        Symbol symbol;
        this.capacity = i;
        this.onUndeliveredElement = function1;
        if (i >= 0) {
            initialBufferEnd = BufferedChannelKt.initialBufferEnd(i);
            this.bufferEnd$volatile = initialBufferEnd;
            this.completedExpandBuffersAndPauseFlag$volatile = getBufferEndCounter();
            ChannelSegment channelSegment = new ChannelSegment(0L, null, this, 3);
            this.sendSegment$volatile = channelSegment;
            this.receiveSegment$volatile = channelSegment;
            this.bufferEndSegment$volatile = isRendezvousOrUnlimited() ? BufferedChannelKt.NULL_SEGMENT : channelSegment;
            this.onUndeliveredElementReceiveCancellationConstructor = function1 != 0 ? new Function3() { // from class: kotlinx.coroutines.channels.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Function3 onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56;
                    onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56 = BufferedChannel.onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56(BufferedChannel.this, (SelectInstance) obj, obj2, obj3);
                    return onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56;
                }
            } : null;
            symbol = BufferedChannelKt.NO_CLOSE_CAUSE;
            this._closeCause$volatile = symbol;
            return;
        }
        throw new IllegalArgumentException(("Invalid channel capacity: " + i + ", should be >=0").toString());
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater access$getReceiveSegment$volatile$FU() {
        return receiveSegment$volatile$FU;
    }

    public static final /* synthetic */ AtomicLongFieldUpdater access$getReceivers$volatile$FU() {
        return receivers$volatile$FU;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Function3<Throwable, Object, CoroutineContext, Unit> bindCancellationFun(final Function1<? super E, Unit> function1, final E e) {
        return new Function3() { // from class: kotlinx.coroutines.channels.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                Unit bindCancellationFun$lambda$89;
                bindCancellationFun$lambda$89 = BufferedChannel.bindCancellationFun$lambda$89(Function1.this, e, (Throwable) obj, obj2, (CoroutineContext) obj3);
                return bindCancellationFun$lambda$89;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit bindCancellationFun$lambda$89(Function1 function1, Object obj, Throwable th, Object obj2, CoroutineContext coroutineContext) {
        OnUndeliveredElementKt.callUndeliveredElement(function1, obj, coroutineContext);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KFunction<Unit> bindCancellationFunResult(Function1<? super E, Unit> function1) {
        return new BufferedChannel$bindCancellationFunResult$1(this);
    }

    private final boolean bufferOrRendezvousSend(long j) {
        if (j >= getBufferEndCounter() && j >= getReceiversCounter$kotlinx_coroutines_core() + this.capacity) {
            return false;
        }
        return true;
    }

    private final void cancelSuspendedReceiveRequests(ChannelSegment<E> channelSegment, long j) {
        Symbol symbol;
        Object m1963constructorimpl$default = InlineList.m1963constructorimpl$default(null, 1, null);
        loop0: while (channelSegment != null) {
            for (int i = BufferedChannelKt.SEGMENT_SIZE - 1; -1 < i; i--) {
                if ((channelSegment.id * BufferedChannelKt.SEGMENT_SIZE) + i < j) {
                    break loop0;
                }
                while (true) {
                    Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
                    if (state$kotlinx_coroutines_core != null) {
                        symbol = BufferedChannelKt.IN_BUFFER;
                        if (state$kotlinx_coroutines_core != symbol) {
                            if (state$kotlinx_coroutines_core instanceof WaiterEB) {
                                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                    m1963constructorimpl$default = InlineList.m1968plusFjFbRPM(m1963constructorimpl$default, ((WaiterEB) state$kotlinx_coroutines_core).waiter);
                                    channelSegment.onCancelledRequest(i, true);
                                    break;
                                }
                            } else if (!(state$kotlinx_coroutines_core instanceof Waiter)) {
                                break;
                            } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                m1963constructorimpl$default = InlineList.m1968plusFjFbRPM(m1963constructorimpl$default, state$kotlinx_coroutines_core);
                                channelSegment.onCancelledRequest(i, true);
                                break;
                            }
                        }
                    }
                    if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                        channelSegment.onSlotCleaned();
                        break;
                    }
                }
            }
            channelSegment = (ChannelSegment) channelSegment.getPrev();
        }
        if (m1963constructorimpl$default != null) {
            if (!(m1963constructorimpl$default instanceof ArrayList)) {
                resumeReceiverOnClosedChannel((Waiter) m1963constructorimpl$default);
                return;
            }
            ArrayList arrayList = (ArrayList) m1963constructorimpl$default;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                resumeReceiverOnClosedChannel((Waiter) arrayList.get(size));
            }
        }
    }

    private final ChannelSegment<E> closeLinkedList() {
        ChannelSegment channelSegment = bufferEndSegment$volatile$FU.get(this);
        ChannelSegment channelSegment2 = (ChannelSegment) sendSegment$volatile$FU.get(this);
        if (channelSegment2.id > ((ChannelSegment) channelSegment).id) {
            channelSegment = channelSegment2;
        }
        ChannelSegment channelSegment3 = (ChannelSegment) receiveSegment$volatile$FU.get(this);
        if (channelSegment3.id > ((ChannelSegment) channelSegment).id) {
            channelSegment = channelSegment3;
        }
        return (ChannelSegment) ConcurrentLinkedListKt.close((ConcurrentLinkedListNode) channelSegment);
    }

    private final void completeCancel(long j) {
        removeUnprocessedElements(completeClose(j));
    }

    private final ChannelSegment<E> completeClose(long j) {
        ChannelSegment<E> closeLinkedList = closeLinkedList();
        if (isConflatedDropOldest()) {
            long markAllEmptyCellsAsClosed = markAllEmptyCellsAsClosed(closeLinkedList);
            if (markAllEmptyCellsAsClosed != -1) {
                dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(markAllEmptyCellsAsClosed);
            }
        }
        cancelSuspendedReceiveRequests(closeLinkedList, j);
        return closeLinkedList;
    }

    private final void completeCloseOrCancel() {
        isClosedForSend();
    }

    private final void expandBuffer() {
        if (isRendezvousOrUnlimited()) {
            return;
        }
        ChannelSegment<E> channelSegment = (ChannelSegment) bufferEndSegment$volatile$FU.get(this);
        while (true) {
            long andIncrement = bufferEnd$volatile$FU.getAndIncrement(this);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / i;
            if (getSendersCounter$kotlinx_coroutines_core() <= andIncrement) {
                if (channelSegment.id < j && channelSegment.getNext() != 0) {
                    moveSegmentBufferEndToSpecifiedOrLast(j, channelSegment);
                }
                incCompletedExpandBufferAttempts$default(this, 0L, 1, null);
                return;
            }
            if (channelSegment.id != j) {
                ChannelSegment<E> findSegmentBufferEnd = findSegmentBufferEnd(j, channelSegment, andIncrement);
                if (findSegmentBufferEnd == null) {
                    continue;
                } else {
                    channelSegment = findSegmentBufferEnd;
                }
            }
            if (updateCellExpandBuffer(channelSegment, (int) (andIncrement % i), andIncrement)) {
                incCompletedExpandBufferAttempts$default(this, 0L, 1, null);
                return;
            }
            incCompletedExpandBufferAttempts$default(this, 0L, 1, null);
        }
    }

    private final ChannelSegment<E> findSegmentBufferEnd(long j, ChannelSegment<E> channelSegment, long j2) {
        Object findSegmentInternal;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = bufferEndSegment$volatile$FU;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j, function2);
            if (!SegmentOrClosed.m1980isClosedimpl(findSegmentInternal)) {
                Segment m1978getSegmentimpl = SegmentOrClosed.m1978getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.id >= m1978getSegmentimpl.id) {
                        break loop0;
                    } else if (!m1978getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    } else if (androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReferenceFieldUpdater, this, segment, m1978getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (m1978getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m1978getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.m1980isClosedimpl(findSegmentInternal)) {
            completeCloseOrCancel();
            moveSegmentBufferEndToSpecifiedOrLast(j, channelSegment);
            incCompletedExpandBufferAttempts$default(this, 0L, 1, null);
            return null;
        }
        ChannelSegment<E> channelSegment2 = (ChannelSegment) SegmentOrClosed.m1978getSegmentimpl(findSegmentInternal);
        if (channelSegment2.id > j) {
            long j3 = channelSegment2.id;
            int i = BufferedChannelKt.SEGMENT_SIZE;
            if (bufferEnd$volatile$FU.compareAndSet(this, j2 + 1, j3 * i)) {
                incCompletedExpandBufferAttempts((channelSegment2.id * i) - j2);
            } else {
                incCompletedExpandBufferAttempts$default(this, 0L, 1, null);
            }
            return null;
        }
        return channelSegment2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ChannelSegment<E> findSegmentReceive(long j, ChannelSegment<E> channelSegment) {
        Object findSegmentInternal;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = receiveSegment$volatile$FU;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j, function2);
            if (!SegmentOrClosed.m1980isClosedimpl(findSegmentInternal)) {
                Segment m1978getSegmentimpl = SegmentOrClosed.m1978getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.id >= m1978getSegmentimpl.id) {
                        break loop0;
                    } else if (!m1978getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    } else if (androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReferenceFieldUpdater, this, segment, m1978getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (m1978getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m1978getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.m1980isClosedimpl(findSegmentInternal)) {
            completeCloseOrCancel();
            if (channelSegment.id * BufferedChannelKt.SEGMENT_SIZE < getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
            return null;
        }
        ChannelSegment<E> channelSegment2 = (ChannelSegment) SegmentOrClosed.m1978getSegmentimpl(findSegmentInternal);
        if (!isRendezvousOrUnlimited() && j <= getBufferEndCounter() / BufferedChannelKt.SEGMENT_SIZE) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = bufferEndSegment$volatile$FU;
            while (true) {
                Segment segment2 = (Segment) atomicReferenceFieldUpdater2.get(this);
                if (segment2.id >= channelSegment2.id || !channelSegment2.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                } else if (androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReferenceFieldUpdater2, this, segment2, channelSegment2)) {
                    if (segment2.decPointers$kotlinx_coroutines_core()) {
                        segment2.remove();
                    }
                } else if (channelSegment2.decPointers$kotlinx_coroutines_core()) {
                    channelSegment2.remove();
                }
            }
        }
        long j2 = channelSegment2.id;
        if (j2 > j) {
            int i = BufferedChannelKt.SEGMENT_SIZE;
            updateReceiversCounterIfLower(j2 * i);
            if (channelSegment2.id * i < getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment2.cleanPrev();
            }
            return null;
        }
        return channelSegment2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ChannelSegment<E> findSegmentSend(long j, ChannelSegment<E> channelSegment) {
        Object findSegmentInternal;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = sendSegment$volatile$FU;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j, function2);
            if (!SegmentOrClosed.m1980isClosedimpl(findSegmentInternal)) {
                Segment m1978getSegmentimpl = SegmentOrClosed.m1978getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.id >= m1978getSegmentimpl.id) {
                        break loop0;
                    } else if (!m1978getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    } else if (androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReferenceFieldUpdater, this, segment, m1978getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (m1978getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m1978getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.m1980isClosedimpl(findSegmentInternal)) {
            completeCloseOrCancel();
            if (channelSegment.id * BufferedChannelKt.SEGMENT_SIZE < getReceiversCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
            return null;
        }
        ChannelSegment<E> channelSegment2 = (ChannelSegment) SegmentOrClosed.m1978getSegmentimpl(findSegmentInternal);
        long j2 = channelSegment2.id;
        if (j2 > j) {
            int i = BufferedChannelKt.SEGMENT_SIZE;
            updateSendersCounterIfLower(j2 * i);
            if (channelSegment2.id * i < getReceiversCounter$kotlinx_coroutines_core()) {
                channelSegment2.cleanPrev();
            }
            return null;
        }
        return channelSegment2;
    }

    private final /* synthetic */ Object getAndUpdate$atomicfu$ATOMIC_FIELD_UPDATER$Any(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, Function1<Object, ? extends Object> function1) {
        Object obj2;
        do {
            obj2 = atomicReferenceFieldUpdater.get(obj);
        } while (!androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReferenceFieldUpdater, obj, obj2, function1.invoke(obj2)));
        return obj2;
    }

    private final /* synthetic */ long getBufferEnd$volatile() {
        return this.bufferEnd$volatile;
    }

    private final long getBufferEndCounter() {
        return bufferEnd$volatile$FU.get(this);
    }

    private final /* synthetic */ Object getBufferEndSegment$volatile() {
        return this.bufferEndSegment$volatile;
    }

    private final /* synthetic */ Object getCloseHandler$volatile() {
        return this.closeHandler$volatile;
    }

    private final /* synthetic */ long getCompletedExpandBuffersAndPauseFlag$volatile() {
        return this.completedExpandBuffersAndPauseFlag$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Throwable getReceiveException() {
        Throwable closeCause = getCloseCause();
        if (closeCause == null) {
            return new ClosedReceiveChannelException(ChannelsKt.DEFAULT_CLOSE_MESSAGE);
        }
        return closeCause;
    }

    private final /* synthetic */ Object getReceiveSegment$volatile() {
        return this.receiveSegment$volatile;
    }

    private final /* synthetic */ long getReceivers$volatile() {
        return this.receivers$volatile;
    }

    private final /* synthetic */ Object getSendSegment$volatile() {
        return this.sendSegment$volatile;
    }

    private final /* synthetic */ long getSendersAndCloseStatus$volatile() {
        return this.sendersAndCloseStatus$volatile;
    }

    private final /* synthetic */ Object get_closeCause$volatile() {
        return this._closeCause$volatile;
    }

    private final void incCompletedExpandBufferAttempts(long j) {
        if ((completedExpandBuffersAndPauseFlag$volatile$FU.addAndGet(this, j) & Longs.MAX_POWER_OF_TWO) != 0) {
            do {
            } while ((completedExpandBuffersAndPauseFlag$volatile$FU.get(this) & Longs.MAX_POWER_OF_TWO) != 0);
        }
    }

    public static /* synthetic */ void incCompletedExpandBufferAttempts$default(BufferedChannel bufferedChannel, long j, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                j = 1;
            }
            bufferedChannel.incCompletedExpandBufferAttempts(j);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
    }

    private final void invokeCloseHandler() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = closeHandler$volatile$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReferenceFieldUpdater, this, obj, obj == null ? BufferedChannelKt.CLOSE_HANDLER_CLOSED : BufferedChannelKt.CLOSE_HANDLER_INVOKED));
        if (obj == null) {
            return;
        }
        Function1 function1 = (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 1);
        ((Function1) obj).invoke(getCloseCause());
    }

    private final boolean isCellNonEmpty(ChannelSegment<E> channelSegment, int i, long j) {
        Object state$kotlinx_coroutines_core;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        do {
            state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core != null) {
                symbol2 = BufferedChannelKt.IN_BUFFER;
                if (state$kotlinx_coroutines_core != symbol2) {
                    if (state$kotlinx_coroutines_core != BufferedChannelKt.BUFFERED) {
                        symbol3 = BufferedChannelKt.INTERRUPTED_SEND;
                        if (state$kotlinx_coroutines_core != symbol3 && state$kotlinx_coroutines_core != BufferedChannelKt.getCHANNEL_CLOSED()) {
                            symbol4 = BufferedChannelKt.DONE_RCV;
                            if (state$kotlinx_coroutines_core != symbol4) {
                                symbol5 = BufferedChannelKt.POISONED;
                                if (state$kotlinx_coroutines_core != symbol5) {
                                    symbol6 = BufferedChannelKt.RESUMING_BY_EB;
                                    if (state$kotlinx_coroutines_core != symbol6) {
                                        symbol7 = BufferedChannelKt.RESUMING_BY_RCV;
                                        if (state$kotlinx_coroutines_core == symbol7 || j != getReceiversCounter$kotlinx_coroutines_core()) {
                                            return false;
                                        }
                                        return true;
                                    }
                                    return true;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return true;
                }
            }
            symbol = BufferedChannelKt.POISONED;
        } while (!channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, symbol));
        expandBuffer();
        return false;
    }

    private final boolean isClosed(long j, boolean z) {
        int i = (int) (j >> 60);
        if (i == 0 || i == 1) {
            return false;
        }
        if (i != 2) {
            if (i == 3) {
                completeCancel(j & 1152921504606846975L);
                return true;
            }
            throw new IllegalStateException(("unexpected close status: " + i).toString());
        }
        completeClose(j & 1152921504606846975L);
        if (z && hasElements$kotlinx_coroutines_core()) {
            return false;
        }
        return true;
    }

    private final boolean isClosedForReceive0(long j) {
        return isClosed(j, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClosedForSend0(long j) {
        return isClosed(j, false);
    }

    private final boolean isRendezvousOrUnlimited() {
        long bufferEndCounter = getBufferEndCounter();
        if (bufferEndCounter != 0 && bufferEndCounter != Long.MAX_VALUE) {
            return false;
        }
        return true;
    }

    private final /* synthetic */ void loop$atomicfu$ATOMIC_FIELD_UPDATER$Any(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    private final /* synthetic */ void loop$atomicfu$ATOMIC_FIELD_UPDATER$Long(AtomicLongFieldUpdater atomicLongFieldUpdater, Object obj, Function1<? super Long, Unit> function1) {
        while (true) {
            function1.invoke(Long.valueOf(atomicLongFieldUpdater.get(obj)));
        }
    }

    private final long markAllEmptyCellsAsClosed(ChannelSegment<E> channelSegment) {
        Symbol symbol;
        do {
            int i = BufferedChannelKt.SEGMENT_SIZE;
            while (true) {
                i--;
                if (-1 < i) {
                    long j = (channelSegment.id * BufferedChannelKt.SEGMENT_SIZE) + i;
                    if (j >= getReceiversCounter$kotlinx_coroutines_core()) {
                        while (true) {
                            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
                            if (state$kotlinx_coroutines_core != null) {
                                symbol = BufferedChannelKt.IN_BUFFER;
                                if (state$kotlinx_coroutines_core != symbol) {
                                    if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
                                        return j;
                                    }
                                }
                            }
                            if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                channelSegment.onSlotCleaned();
                                break;
                            }
                        }
                    } else {
                        return -1L;
                    }
                } else {
                    channelSegment = (ChannelSegment) channelSegment.getPrev();
                }
            }
        } while (channelSegment != null);
        return -1L;
    }

    private final void markCancellationStarted() {
        long j;
        long constructSendersAndCloseStatus;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        do {
            j = atomicLongFieldUpdater.get(this);
            if (((int) (j >> 60)) == 0) {
                constructSendersAndCloseStatus = BufferedChannelKt.constructSendersAndCloseStatus(1152921504606846975L & j, 1);
            } else {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, constructSendersAndCloseStatus));
    }

    private final void markCancelled() {
        long j;
        long constructSendersAndCloseStatus;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        do {
            j = atomicLongFieldUpdater.get(this);
            constructSendersAndCloseStatus = BufferedChannelKt.constructSendersAndCloseStatus(1152921504606846975L & j, 3);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, constructSendersAndCloseStatus));
    }

    private final void markClosed() {
        long j;
        long constructSendersAndCloseStatus;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        do {
            j = atomicLongFieldUpdater.get(this);
            int i = (int) (j >> 60);
            if (i == 0) {
                constructSendersAndCloseStatus = BufferedChannelKt.constructSendersAndCloseStatus(1152921504606846975L & j, 2);
            } else if (i == 1) {
                constructSendersAndCloseStatus = BufferedChannelKt.constructSendersAndCloseStatus(1152921504606846975L & j, 3);
            } else {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, constructSendersAndCloseStatus));
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0011, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void moveSegmentBufferEndToSpecifiedOrLast(long r5, kotlinx.coroutines.channels.ChannelSegment<E> r7) {
        /*
            r4 = this;
        L0:
            long r0 = r7.id
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 >= 0) goto L11
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r0 = r7.getNext()
            kotlinx.coroutines.channels.ChannelSegment r0 = (kotlinx.coroutines.channels.ChannelSegment) r0
            if (r0 != 0) goto Lf
            goto L11
        Lf:
            r7 = r0
            goto L0
        L11:
            boolean r5 = r7.isRemoved()
            if (r5 == 0) goto L22
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r5 = r7.getNext()
            kotlinx.coroutines.channels.ChannelSegment r5 = (kotlinx.coroutines.channels.ChannelSegment) r5
            if (r5 != 0) goto L20
            goto L22
        L20:
            r7 = r5
            goto L11
        L22:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = getBufferEndSegment$volatile$FU()
        L26:
            java.lang.Object r6 = r5.get(r4)
            kotlinx.coroutines.internal.Segment r6 = (kotlinx.coroutines.internal.Segment) r6
            long r0 = r6.id
            long r2 = r7.id
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L35
            return
        L35:
            boolean r0 = r7.tryIncPointers$kotlinx_coroutines_core()
            if (r0 != 0) goto L3c
            goto L11
        L3c:
            boolean r0 = androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r4, r6, r7)
            if (r0 == 0) goto L4c
            boolean r5 = r6.decPointers$kotlinx_coroutines_core()
            if (r5 == 0) goto L4b
            r6.remove()
        L4b:
            return
        L4c:
            boolean r6 = r7.decPointers$kotlinx_coroutines_core()
            if (r6 == 0) goto L26
            r7.remove()
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.moveSegmentBufferEndToSpecifiedOrLast(long, kotlinx.coroutines.channels.ChannelSegment):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCancellationChannelResultImplDoNotCall-5_sEAP8  reason: not valid java name */
    public final void m1916onCancellationChannelResultImplDoNotCall5_sEAP8(Throwable th, Object obj, CoroutineContext coroutineContext) {
        OnUndeliveredElementKt.callUndeliveredElement(this.onUndeliveredElement, ChannelResult.m1932getOrNullimpl(obj), coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onCancellationImplDoNotCall(Throwable th, E e, CoroutineContext coroutineContext) {
        OnUndeliveredElementKt.callUndeliveredElement(this.onUndeliveredElement, e, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosedReceiveCatchingOnNoWaiterSuspend(CancellableContinuation<? super ChannelResult<? extends E>> cancellableContinuation) {
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m438constructorimpl(ChannelResult.m1927boximpl(ChannelResult.Companion.m1940closedJP2dKIU(getCloseCause()))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosedReceiveOnNoWaiterSuspend(CancellableContinuation<? super E> cancellableContinuation) {
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m438constructorimpl(ResultKt.createFailure(getReceiveException())));
    }

    private final void onClosedSelectOnReceive(SelectInstance<?> selectInstance) {
        selectInstance.selectInRegistrationPhase(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    private final void onClosedSelectOnSend(E e, SelectInstance<?> selectInstance) {
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, e, selectInstance.getContext());
        }
        selectInstance.selectInRegistrationPhase(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object onClosedSend(E e, Continuation<? super Unit> continuation) {
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        if (function1 != null && (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, e, null, 2, null)) != null) {
            ExceptionsKt.addSuppressed(callUndeliveredElementCatchingException$default, getSendException());
            Result.Companion companion = Result.Companion;
            cancellableContinuationImpl.resumeWith(Result.m438constructorimpl(ResultKt.createFailure(callUndeliveredElementCatchingException$default)));
        } else {
            Throwable sendException = getSendException();
            Result.Companion companion2 = Result.Companion;
            cancellableContinuationImpl.resumeWith(Result.m438constructorimpl(ResultKt.createFailure(sendException)));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return result;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosedSendOnNoWaiterSuspend(E e, CancellableContinuation<? super Unit> cancellableContinuation) {
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, e, cancellableContinuation.getContext());
        }
        Throwable sendException = getSendException();
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m438constructorimpl(ResultKt.createFailure(sendException)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function3 onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56(final BufferedChannel bufferedChannel, final SelectInstance selectInstance, Object obj, final Object obj2) {
        return new Function3() { // from class: kotlinx.coroutines.channels.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                Unit onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56$lambda$55;
                onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56$lambda$55 = BufferedChannel.onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56$lambda$55(obj2, bufferedChannel, selectInstance, (Throwable) obj3, obj4, (CoroutineContext) obj5);
                return onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56$lambda$55;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56$lambda$55(Object obj, BufferedChannel bufferedChannel, SelectInstance selectInstance, Throwable th, Object obj2, CoroutineContext coroutineContext) {
        if (obj != BufferedChannelKt.getCHANNEL_CLOSED()) {
            OnUndeliveredElementKt.callUndeliveredElement(bufferedChannel.onUndeliveredElement, obj, selectInstance.getContext());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareReceiverForSuspension(Waiter waiter, ChannelSegment<E> channelSegment, int i) {
        onReceiveEnqueued();
        waiter.invokeOnCancellation(channelSegment, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareSenderForSuspension(Waiter waiter, ChannelSegment<E> channelSegment, int i) {
        waiter.invokeOnCancellation(channelSegment, i + BufferedChannelKt.SEGMENT_SIZE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object processResultSelectReceive(Object obj, Object obj2) {
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return obj2;
        }
        throw getReceiveException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object processResultSelectReceiveCatching(Object obj, Object obj2) {
        Object m1942successJP2dKIU;
        if (obj2 == BufferedChannelKt.getCHANNEL_CLOSED()) {
            m1942successJP2dKIU = ChannelResult.Companion.m1940closedJP2dKIU(getCloseCause());
        } else {
            m1942successJP2dKIU = ChannelResult.Companion.m1942successJP2dKIU(obj2);
        }
        return ChannelResult.m1927boximpl(m1942successJP2dKIU);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object processResultSelectReceiveOrNull(Object obj, Object obj2) {
        if (obj2 == BufferedChannelKt.getCHANNEL_CLOSED()) {
            if (getCloseCause() == null) {
                return null;
            }
            throw getReceiveException();
        }
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object processResultSelectSend(Object obj, Object obj2) {
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return this;
        }
        throw getSendException();
    }

    public static /* synthetic */ <E> Object receive$suspendImpl(BufferedChannel<E> bufferedChannel, Continuation<? super E> continuation) {
        ChannelSegment<E> channelSegment;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        ChannelSegment<E> channelSegment2 = (ChannelSegment) access$getReceiveSegment$volatile$FU().get(bufferedChannel);
        while (!bufferedChannel.isClosedForReceive()) {
            long andIncrement = access$getReceivers$volatile$FU().getAndIncrement(bufferedChannel);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / i;
            int i2 = (int) (andIncrement % i);
            if (channelSegment2.id != j) {
                ChannelSegment<E> findSegmentReceive = bufferedChannel.findSegmentReceive(j, channelSegment2);
                if (findSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = findSegmentReceive;
                }
            } else {
                channelSegment = channelSegment2;
            }
            BufferedChannel<E> bufferedChannel2 = bufferedChannel;
            Object updateCellReceive = bufferedChannel2.updateCellReceive(channelSegment, i2, andIncrement, null);
            symbol = BufferedChannelKt.SUSPEND;
            if (updateCellReceive != symbol) {
                symbol2 = BufferedChannelKt.FAILED;
                if (updateCellReceive != symbol2) {
                    symbol3 = BufferedChannelKt.SUSPEND_NO_WAITER;
                    if (updateCellReceive == symbol3) {
                        return bufferedChannel2.receiveOnNoWaiterSuspend(channelSegment, i2, andIncrement, continuation);
                    }
                    channelSegment.cleanPrev();
                    return updateCellReceive;
                }
                if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                bufferedChannel = bufferedChannel2;
                channelSegment2 = channelSegment;
            } else {
                throw new IllegalStateException("unexpected");
            }
        }
        throw StackTraceRecoveryKt.recoverStackTrace(bufferedChannel.getReceiveException());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    /* renamed from: receiveCatching-JP2dKIU$suspendImpl  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ <E> java.lang.Object m1917receiveCatchingJP2dKIU$suspendImpl(kotlinx.coroutines.channels.BufferedChannel<E> r13, kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.ChannelResult<? extends E>> r14) {
        /*
            boolean r0 = r14 instanceof kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            if (r0 == 0) goto L14
            r0 = r14
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = (kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = new kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            r0.<init>(r13, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.ResultKt.throwOnFailure(r14)
            kotlinx.coroutines.channels.ChannelResult r14 = (kotlinx.coroutines.channels.ChannelResult) r14
            java.lang.Object r13 = r14.m1939unboximpl()
            return r13
        L31:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L39:
            kotlin.ResultKt.throwOnFailure(r14)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r14 = access$getReceiveSegment$volatile$FU()
            java.lang.Object r14 = r14.get(r13)
            kotlinx.coroutines.channels.ChannelSegment r14 = (kotlinx.coroutines.channels.ChannelSegment) r14
        L46:
            boolean r1 = r13.isClosedForReceive()
            if (r1 == 0) goto L57
            kotlinx.coroutines.channels.ChannelResult$Companion r14 = kotlinx.coroutines.channels.ChannelResult.Companion
            java.lang.Throwable r13 = r13.getCloseCause()
            java.lang.Object r13 = r14.m1940closedJP2dKIU(r13)
            return r13
        L57:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = access$getReceivers$volatile$FU()
            long r4 = r1.getAndIncrement(r13)
            int r1 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r7 = (long) r1
            long r7 = r4 / r7
            long r9 = (long) r1
            long r9 = r4 % r9
            int r3 = (int) r9
            long r9 = r14.id
            int r1 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r1 == 0) goto L77
            kotlinx.coroutines.channels.ChannelSegment r1 = access$findSegmentReceive(r13, r7, r14)
            if (r1 != 0) goto L75
            goto L46
        L75:
            r8 = r1
            goto L78
        L77:
            r8 = r14
        L78:
            r12 = 0
            r7 = r13
            r9 = r3
            r10 = r4
            java.lang.Object r13 = access$updateCellReceive(r7, r8, r9, r10, r12)
            r1 = r7
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.access$getSUSPEND$p()
            if (r13 == r14) goto Lb6
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.access$getFAILED$p()
            if (r13 != r14) goto L9b
            long r13 = r1.getSendersCounter$kotlinx_coroutines_core()
            int r13 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r13 >= 0) goto L98
            r8.cleanPrev()
        L98:
            r13 = r1
            r14 = r8
            goto L46
        L9b:
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.access$getSUSPEND_NO_WAITER$p()
            if (r13 != r14) goto Lac
            r6.label = r2
            r2 = r8
            java.lang.Object r13 = r1.m1918receiveCatchingOnNoWaiterSuspendGKJJFZk(r2, r3, r4, r6)
            if (r13 != r0) goto Lab
            return r0
        Lab:
            return r13
        Lac:
            r8.cleanPrev()
            kotlinx.coroutines.channels.ChannelResult$Companion r14 = kotlinx.coroutines.channels.ChannelResult.Companion
            java.lang.Object r13 = r14.m1942successJP2dKIU(r13)
            return r13
        Lb6:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "unexpected"
            r13.<init>(r14)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m1917receiveCatchingJP2dKIU$suspendImpl(kotlinx.coroutines.channels.BufferedChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* renamed from: receiveCatchingOnNoWaiterSuspend-GKJJFZk  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1918receiveCatchingOnNoWaiterSuspendGKJJFZk(kotlinx.coroutines.channels.ChannelSegment<E> r11, int r12, long r13, kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.ChannelResult<? extends E>> r15) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m1918receiveCatchingOnNoWaiterSuspendGKJJFZk(kotlinx.coroutines.channels.ChannelSegment, int, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final <R> R receiveImpl(Object obj, Function1<? super E, ? extends R> function1, Function3<? super ChannelSegment<E>, ? super Integer, ? super Long, ? extends R> function3, Function0<? extends R> function0, Function3<? super ChannelSegment<E>, ? super Integer, ? super Long, ? extends R> function32) {
        ChannelSegment channelSegment;
        Symbol symbol;
        Waiter waiter;
        Symbol symbol2;
        Symbol symbol3;
        ChannelSegment channelSegment2 = (ChannelSegment) access$getReceiveSegment$volatile$FU().get(this);
        while (!isClosedForReceive()) {
            long andIncrement = access$getReceivers$volatile$FU().getAndIncrement(this);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / i;
            int i2 = (int) (andIncrement % i);
            if (channelSegment2.id != j) {
                ChannelSegment findSegmentReceive = findSegmentReceive(j, channelSegment2);
                if (findSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = findSegmentReceive;
                }
            } else {
                channelSegment = channelSegment2;
            }
            Object obj2 = obj;
            Object obj3 = (Object) updateCellReceive(channelSegment, i2, andIncrement, obj2);
            channelSegment2 = channelSegment;
            symbol = BufferedChannelKt.SUSPEND;
            if (obj3 != symbol) {
                symbol2 = BufferedChannelKt.FAILED;
                if (obj3 != symbol2) {
                    symbol3 = BufferedChannelKt.SUSPEND_NO_WAITER;
                    if (obj3 == symbol3) {
                        return function32.invoke(channelSegment2, Integer.valueOf(i2), Long.valueOf(andIncrement));
                    }
                    channelSegment2.cleanPrev();
                    return function1.invoke(obj3);
                }
                if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment2.cleanPrev();
                }
                obj = obj2;
            } else {
                if (obj2 instanceof Waiter) {
                    waiter = (Waiter) obj2;
                } else {
                    waiter = null;
                }
                if (waiter != null) {
                    prepareReceiverForSuspension(waiter, channelSegment2, i2);
                }
                return function3.invoke(channelSegment2, Integer.valueOf(i2), Long.valueOf(andIncrement));
            }
        }
        return function0.invoke();
    }

    public static /* synthetic */ Object receiveImpl$default(BufferedChannel bufferedChannel, Object obj, Function1 function1, Function3 function3, Function0 function0, Function3 function32, int i, Object obj2) {
        ChannelSegment channelSegment;
        Symbol symbol;
        Waiter waiter;
        Symbol symbol2;
        Symbol symbol3;
        if (obj2 == null) {
            if ((i & 16) != 0) {
                function32 = new Function3() { // from class: kotlinx.coroutines.channels.BufferedChannel$receiveImpl$1
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Object invoke(Object obj3, Object obj4, Object obj5) {
                        return invoke((ChannelSegment) obj3, ((Number) obj4).intValue(), ((Number) obj5).longValue());
                    }

                    public final Void invoke(ChannelSegment<E> channelSegment2, int i2, long j) {
                        throw new IllegalStateException("unexpected");
                    }
                };
            }
            ChannelSegment channelSegment2 = (ChannelSegment) access$getReceiveSegment$volatile$FU().get(bufferedChannel);
            while (!bufferedChannel.isClosedForReceive()) {
                long andIncrement = access$getReceivers$volatile$FU().getAndIncrement(bufferedChannel);
                int i2 = BufferedChannelKt.SEGMENT_SIZE;
                long j = andIncrement / i2;
                int i3 = (int) (andIncrement % i2);
                if (channelSegment2.id != j) {
                    ChannelSegment findSegmentReceive = bufferedChannel.findSegmentReceive(j, channelSegment2);
                    if (findSegmentReceive == null) {
                        continue;
                    } else {
                        channelSegment = findSegmentReceive;
                    }
                } else {
                    channelSegment = channelSegment2;
                }
                BufferedChannel bufferedChannel2 = bufferedChannel;
                Object obj3 = obj;
                Object updateCellReceive = bufferedChannel2.updateCellReceive(channelSegment, i3, andIncrement, obj3);
                channelSegment2 = channelSegment;
                symbol = BufferedChannelKt.SUSPEND;
                if (updateCellReceive != symbol) {
                    symbol2 = BufferedChannelKt.FAILED;
                    if (updateCellReceive != symbol2) {
                        symbol3 = BufferedChannelKt.SUSPEND_NO_WAITER;
                        if (updateCellReceive == symbol3) {
                            return function32.invoke(channelSegment2, Integer.valueOf(i3), Long.valueOf(andIncrement));
                        }
                        channelSegment2.cleanPrev();
                        return function1.invoke(updateCellReceive);
                    }
                    if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment2.cleanPrev();
                    }
                    bufferedChannel = bufferedChannel2;
                    obj = obj3;
                } else {
                    if (obj3 instanceof Waiter) {
                        waiter = (Waiter) obj3;
                    } else {
                        waiter = null;
                    }
                    if (waiter != null) {
                        bufferedChannel2.prepareReceiverForSuspension(waiter, channelSegment2, i3);
                    }
                    return function3.invoke(channelSegment2, Integer.valueOf(i3), Long.valueOf(andIncrement));
                }
            }
            return function0.invoke();
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: receiveImpl");
    }

    private final void receiveImplOnNoWaiter(ChannelSegment<E> channelSegment, int i, long j, Waiter waiter, Function1<? super E, Unit> function1, Function0<Unit> function0) {
        Symbol symbol;
        Symbol symbol2;
        ChannelSegment channelSegment2;
        Symbol symbol3;
        Waiter waiter2;
        Symbol symbol4;
        Symbol symbol5;
        Object obj = (Object) updateCellReceive(channelSegment, i, j, waiter);
        BufferedChannel<E> bufferedChannel = this;
        symbol = BufferedChannelKt.SUSPEND;
        if (obj == symbol) {
            prepareReceiverForSuspension(waiter, channelSegment, i);
            return;
        }
        symbol2 = BufferedChannelKt.FAILED;
        if (obj == symbol2) {
            if (j < getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
            ChannelSegment channelSegment3 = (ChannelSegment) access$getReceiveSegment$volatile$FU().get(this);
            while (!isClosedForReceive()) {
                long andIncrement = access$getReceivers$volatile$FU().getAndIncrement(this);
                int i2 = BufferedChannelKt.SEGMENT_SIZE;
                long j2 = andIncrement / i2;
                int i3 = (int) (andIncrement % i2);
                if (channelSegment3.id != j2) {
                    ChannelSegment findSegmentReceive = findSegmentReceive(j2, channelSegment3);
                    if (findSegmentReceive == null) {
                        continue;
                    } else {
                        channelSegment2 = findSegmentReceive;
                    }
                } else {
                    channelSegment2 = channelSegment3;
                }
                BufferedChannel<E> bufferedChannel2 = bufferedChannel;
                Object obj2 = (Object) bufferedChannel2.updateCellReceive(channelSegment2, i3, andIncrement, waiter);
                channelSegment3 = channelSegment2;
                symbol3 = BufferedChannelKt.SUSPEND;
                if (obj2 != symbol3) {
                    symbol4 = BufferedChannelKt.FAILED;
                    if (obj2 != symbol4) {
                        symbol5 = BufferedChannelKt.SUSPEND_NO_WAITER;
                        if (obj2 != symbol5) {
                            channelSegment3.cleanPrev();
                            function1.invoke(obj2);
                            return;
                        }
                        throw new IllegalStateException("unexpected");
                    }
                    if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment3.cleanPrev();
                    }
                    bufferedChannel = bufferedChannel2;
                } else {
                    if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(waiter)) {
                        waiter2 = waiter;
                    } else {
                        waiter2 = null;
                    }
                    if (waiter2 != null) {
                        prepareReceiverForSuspension(waiter2, channelSegment3, i3);
                    }
                    Unit unit = Unit.INSTANCE;
                    return;
                }
            }
            function0.invoke();
            return;
        }
        channelSegment.cleanPrev();
        function1.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object receiveOnNoWaiterSuspend(ChannelSegment<E> channelSegment, int i, long j, Continuation<? super E> continuation) {
        Symbol symbol;
        Symbol symbol2;
        Function3 function3;
        ChannelSegment channelSegment2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(continuation));
        try {
            Object updateCellReceive = updateCellReceive(channelSegment, i, j, orCreateCancellableContinuation);
            symbol = BufferedChannelKt.SUSPEND;
            if (updateCellReceive == symbol) {
                prepareReceiverForSuspension(orCreateCancellableContinuation, channelSegment, i);
            } else {
                symbol2 = BufferedChannelKt.FAILED;
                KFunction kFunction = null;
                KFunction kFunction2 = null;
                CancellableContinuationImpl cancellableContinuationImpl = null;
                if (updateCellReceive == symbol2) {
                    if (j < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    ChannelSegment channelSegment3 = (ChannelSegment) access$getReceiveSegment$volatile$FU().get(this);
                    while (true) {
                        if (isClosedForReceive()) {
                            onClosedReceiveOnNoWaiterSuspend(orCreateCancellableContinuation);
                            break;
                        }
                        long andIncrement = access$getReceivers$volatile$FU().getAndIncrement(this);
                        int i2 = BufferedChannelKt.SEGMENT_SIZE;
                        long j2 = andIncrement / i2;
                        int i3 = (int) (andIncrement % i2);
                        if (channelSegment3.id != j2) {
                            ChannelSegment findSegmentReceive = findSegmentReceive(j2, channelSegment3);
                            if (findSegmentReceive != null) {
                                channelSegment2 = findSegmentReceive;
                            }
                        } else {
                            channelSegment2 = channelSegment3;
                        }
                        updateCellReceive = updateCellReceive(channelSegment2, i3, andIncrement, orCreateCancellableContinuation);
                        ChannelSegment channelSegment4 = channelSegment2;
                        symbol3 = BufferedChannelKt.SUSPEND;
                        if (updateCellReceive != symbol3) {
                            symbol4 = BufferedChannelKt.FAILED;
                            if (updateCellReceive != symbol4) {
                                symbol5 = BufferedChannelKt.SUSPEND_NO_WAITER;
                                if (updateCellReceive != symbol5) {
                                    channelSegment4.cleanPrev();
                                    Function1<E, Unit> function1 = this.onUndeliveredElement;
                                    if (function1 != null) {
                                        kFunction2 = bindCancellationFun(function1);
                                    }
                                    function3 = (Function3) kFunction2;
                                } else {
                                    throw new IllegalStateException("unexpected");
                                }
                            } else {
                                if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                                    channelSegment4.cleanPrev();
                                }
                                channelSegment3 = channelSegment4;
                            }
                        } else {
                            if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(orCreateCancellableContinuation)) {
                                cancellableContinuationImpl = orCreateCancellableContinuation;
                            }
                            if (cancellableContinuationImpl != null) {
                                prepareReceiverForSuspension(cancellableContinuationImpl, channelSegment4, i3);
                            }
                        }
                    }
                } else {
                    channelSegment.cleanPrev();
                    Function1<E, Unit> function12 = this.onUndeliveredElement;
                    if (function12 != null) {
                        kFunction = bindCancellationFun(function12);
                    }
                    function3 = (Function3) kFunction;
                }
                orCreateCancellableContinuation.resume((CancellableContinuationImpl) updateCellReceive, (Function3<? super Throwable, ? super CancellableContinuationImpl, ? super CoroutineContext, Unit>) function3);
            }
            Object result = orCreateCancellableContinuation.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerSelectForReceive(SelectInstance<?> selectInstance, Object obj) {
        ChannelSegment channelSegment;
        Symbol symbol;
        Waiter waiter;
        Symbol symbol2;
        Symbol symbol3;
        ChannelSegment channelSegment2 = (ChannelSegment) access$getReceiveSegment$volatile$FU().get(this);
        while (!isClosedForReceive()) {
            long andIncrement = access$getReceivers$volatile$FU().getAndIncrement(this);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / i;
            int i2 = (int) (andIncrement % i);
            if (channelSegment2.id != j) {
                ChannelSegment findSegmentReceive = findSegmentReceive(j, channelSegment2);
                if (findSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = findSegmentReceive;
                }
            } else {
                channelSegment = channelSegment2;
            }
            SelectInstance<?> selectInstance2 = selectInstance;
            Object updateCellReceive = updateCellReceive(channelSegment, i2, andIncrement, selectInstance2);
            channelSegment2 = channelSegment;
            symbol = BufferedChannelKt.SUSPEND;
            if (updateCellReceive != symbol) {
                symbol2 = BufferedChannelKt.FAILED;
                if (updateCellReceive != symbol2) {
                    symbol3 = BufferedChannelKt.SUSPEND_NO_WAITER;
                    if (updateCellReceive != symbol3) {
                        channelSegment2.cleanPrev();
                        selectInstance2.selectInRegistrationPhase(updateCellReceive);
                        return;
                    }
                    throw new IllegalStateException("unexpected");
                }
                if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment2.cleanPrev();
                }
                selectInstance = selectInstance2;
            } else {
                if (selectInstance2 instanceof Waiter) {
                    waiter = (Waiter) selectInstance2;
                } else {
                    waiter = null;
                }
                if (waiter != null) {
                    prepareReceiverForSuspension(waiter, channelSegment2, i2);
                    return;
                }
                return;
            }
        }
        onClosedSelectOnReceive(selectInstance);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b3, code lost:
        r12 = (kotlinx.coroutines.channels.ChannelSegment) r12.getPrev();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void removeUnprocessedElements(kotlinx.coroutines.channels.ChannelSegment<E> r12) {
        /*
            r11 = this;
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r0 = r11.onUndeliveredElement
            r1 = 0
            r2 = 1
            java.lang.Object r3 = kotlinx.coroutines.internal.InlineList.m1963constructorimpl$default(r1, r2, r1)
        L8:
            int r4 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            int r4 = r4 - r2
        Lb:
            r5 = -1
            if (r5 >= r4) goto Lb3
            long r6 = r12.id
            int r8 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r8 = (long) r8
            long r6 = r6 * r8
            long r8 = (long) r4
            long r6 = r6 + r8
        L16:
            java.lang.Object r8 = r12.getState$kotlinx_coroutines_core(r4)
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getDONE_RCV$p()
            if (r8 == r9) goto Lbb
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.BUFFERED
            if (r8 != r9) goto L48
            long r9 = r11.getReceiversCounter$kotlinx_coroutines_core()
            int r9 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r9 < 0) goto Lbb
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            boolean r8 = r12.casState$kotlinx_coroutines_core(r4, r8, r9)
            if (r8 == 0) goto L16
            if (r0 == 0) goto L40
            java.lang.Object r5 = r12.getElement$kotlinx_coroutines_core(r4)
            kotlinx.coroutines.internal.UndeliveredElementException r1 = kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElementCatchingException(r0, r5, r1)
        L40:
            r12.cleanElement$kotlinx_coroutines_core(r4)
            r12.onSlotCleaned()
            goto Laf
        L48:
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getIN_BUFFER$p()
            if (r8 == r9) goto La2
            if (r8 != 0) goto L51
            goto La2
        L51:
            boolean r9 = r8 instanceof kotlinx.coroutines.Waiter
            if (r9 != 0) goto L6e
            boolean r9 = r8 instanceof kotlinx.coroutines.channels.WaiterEB
            if (r9 == 0) goto L5a
            goto L6e
        L5a:
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_EB$p()
            if (r8 == r9) goto Lbb
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_RCV$p()
            if (r8 != r9) goto L67
            goto Lbb
        L67:
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_EB$p()
            if (r8 == r9) goto L16
            goto Laf
        L6e:
            long r9 = r11.getReceiversCounter$kotlinx_coroutines_core()
            int r9 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r9 < 0) goto Lbb
            boolean r9 = r8 instanceof kotlinx.coroutines.channels.WaiterEB
            if (r9 == 0) goto L80
            r9 = r8
            kotlinx.coroutines.channels.WaiterEB r9 = (kotlinx.coroutines.channels.WaiterEB) r9
            kotlinx.coroutines.Waiter r9 = r9.waiter
            goto L83
        L80:
            r9 = r8
            kotlinx.coroutines.Waiter r9 = (kotlinx.coroutines.Waiter) r9
        L83:
            kotlinx.coroutines.internal.Symbol r10 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            boolean r8 = r12.casState$kotlinx_coroutines_core(r4, r8, r10)
            if (r8 == 0) goto L16
            if (r0 == 0) goto L97
            java.lang.Object r5 = r12.getElement$kotlinx_coroutines_core(r4)
            kotlinx.coroutines.internal.UndeliveredElementException r1 = kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElementCatchingException(r0, r5, r1)
        L97:
            java.lang.Object r3 = kotlinx.coroutines.internal.InlineList.m1968plusFjFbRPM(r3, r9)
            r12.cleanElement$kotlinx_coroutines_core(r4)
            r12.onSlotCleaned()
            goto Laf
        La2:
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            boolean r8 = r12.casState$kotlinx_coroutines_core(r4, r8, r9)
            if (r8 == 0) goto L16
            r12.onSlotCleaned()
        Laf:
            int r4 = r4 + (-1)
            goto Lb
        Lb3:
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r12 = r12.getPrev()
            kotlinx.coroutines.channels.ChannelSegment r12 = (kotlinx.coroutines.channels.ChannelSegment) r12
            if (r12 != 0) goto L8
        Lbb:
            if (r3 == 0) goto Ldc
            boolean r12 = r3 instanceof java.util.ArrayList
            if (r12 != 0) goto Lc7
            kotlinx.coroutines.Waiter r3 = (kotlinx.coroutines.Waiter) r3
            r11.resumeSenderOnCancelledChannel(r3)
            goto Ldc
        Lc7:
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r12 = r3.size()
            int r12 = r12 - r2
        Lce:
            if (r5 >= r12) goto Ldc
            java.lang.Object r0 = r3.get(r12)
            kotlinx.coroutines.Waiter r0 = (kotlinx.coroutines.Waiter) r0
            r11.resumeSenderOnCancelledChannel(r0)
            int r12 = r12 + (-1)
            goto Lce
        Ldc:
            if (r1 != 0) goto Ldf
            return
        Ldf:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.removeUnprocessedElements(kotlinx.coroutines.channels.ChannelSegment):void");
    }

    private final void resumeReceiverOnClosedChannel(Waiter waiter) {
        resumeWaiterOnClosedChannel(waiter, true);
    }

    private final void resumeSenderOnCancelledChannel(Waiter waiter) {
        resumeWaiterOnClosedChannel(waiter, false);
    }

    private final void resumeWaiterOnClosedChannel(Waiter waiter, boolean z) {
        Throwable sendException;
        if (waiter instanceof SendBroadcast) {
            CancellableContinuation<Boolean> cont = ((SendBroadcast) waiter).getCont();
            Result.Companion companion = Result.Companion;
            cont.resumeWith(Result.m438constructorimpl(Boolean.FALSE));
        } else if (waiter instanceof CancellableContinuation) {
            Continuation continuation = (Continuation) waiter;
            Result.Companion companion2 = Result.Companion;
            if (z) {
                sendException = getReceiveException();
            } else {
                sendException = getSendException();
            }
            continuation.resumeWith(Result.m438constructorimpl(ResultKt.createFailure(sendException)));
        } else if (waiter instanceof ReceiveCatching) {
            CancellableContinuationImpl<ChannelResult<? extends E>> cancellableContinuationImpl = ((ReceiveCatching) waiter).cont;
            Result.Companion companion3 = Result.Companion;
            cancellableContinuationImpl.resumeWith(Result.m438constructorimpl(ChannelResult.m1927boximpl(ChannelResult.Companion.m1940closedJP2dKIU(getCloseCause()))));
        } else if (waiter instanceof BufferedChannelIterator) {
            ((BufferedChannelIterator) waiter).tryResumeHasNextOnClosedChannel();
        } else if (waiter instanceof SelectInstance) {
            ((SelectInstance) waiter).trySelect(this, BufferedChannelKt.getCHANNEL_CLOSED());
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + waiter).toString());
        }
    }

    public static /* synthetic */ <E> Object send$suspendImpl(BufferedChannel<E> bufferedChannel, E e, Continuation<? super Unit> continuation) {
        ChannelSegment<E> channelSegment;
        ChannelSegment<E> channelSegment2 = (ChannelSegment) sendSegment$volatile$FU.get(bufferedChannel);
        while (true) {
            long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(bufferedChannel);
            long j = andIncrement & 1152921504606846975L;
            boolean isClosedForSend0 = bufferedChannel.isClosedForSend0(andIncrement);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (channelSegment2.id != j2) {
                ChannelSegment<E> findSegmentSend = bufferedChannel.findSegmentSend(j2, channelSegment2);
                if (findSegmentSend == null) {
                    if (isClosedForSend0) {
                        Object onClosedSend = bufferedChannel.onClosedSend(e, continuation);
                        if (onClosedSend == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                            return onClosedSend;
                        }
                    }
                } else {
                    channelSegment = findSegmentSend;
                }
            } else {
                channelSegment = channelSegment2;
            }
            BufferedChannel<E> bufferedChannel2 = bufferedChannel;
            E e2 = e;
            int updateCellSend = bufferedChannel2.updateCellSend(channelSegment, i2, e2, j, null, isClosedForSend0);
            if (updateCellSend != 0) {
                if (updateCellSend == 1) {
                    break;
                } else if (updateCellSend != 2) {
                    if (updateCellSend != 3) {
                        if (updateCellSend != 4) {
                            if (updateCellSend == 5) {
                                channelSegment.cleanPrev();
                            }
                            bufferedChannel = bufferedChannel2;
                            channelSegment2 = channelSegment;
                            e = e2;
                        } else {
                            if (j < bufferedChannel2.getReceiversCounter$kotlinx_coroutines_core()) {
                                channelSegment.cleanPrev();
                            }
                            Object onClosedSend2 = bufferedChannel2.onClosedSend(e2, continuation);
                            if (onClosedSend2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                return onClosedSend2;
                            }
                        }
                    } else {
                        Object sendOnNoWaiterSuspend = bufferedChannel2.sendOnNoWaiterSuspend(channelSegment, i2, e2, j, continuation);
                        if (sendOnNoWaiterSuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                            return sendOnNoWaiterSuspend;
                        }
                    }
                } else if (isClosedForSend0) {
                    channelSegment.onSlotCleaned();
                    Object onClosedSend3 = bufferedChannel2.onClosedSend(e2, continuation);
                    if (onClosedSend3 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return onClosedSend3;
                    }
                }
            } else {
                channelSegment.cleanPrev();
                break;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0099, code lost:
        r13 = kotlin.Result.Companion;
        r0.resumeWith(kotlin.Result.m438constructorimpl(kotlin.coroutines.jvm.internal.Boxing.boxBoolean(true)));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ <E> java.lang.Object sendBroadcast$suspendImpl(kotlinx.coroutines.channels.BufferedChannel<E> r13, E r14, kotlin.coroutines.Continuation<? super java.lang.Boolean> r15) {
        /*
            kotlinx.coroutines.CancellableContinuationImpl r0 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r15)
            r2 = 1
            r0.<init>(r1, r2)
            r0.initCancellability()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r1 = r13.onUndeliveredElement
            if (r1 != 0) goto Lb9
            kotlinx.coroutines.channels.BufferedChannel$SendBroadcast r9 = new kotlinx.coroutines.channels.BufferedChannel$SendBroadcast
            r9.<init>(r0)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = access$getSendSegment$volatile$FU()
            java.lang.Object r1 = r1.get(r13)
            kotlinx.coroutines.channels.ChannelSegment r1 = (kotlinx.coroutines.channels.ChannelSegment) r1
        L20:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = access$getSendersAndCloseStatus$volatile$FU()
            long r3 = r3.getAndIncrement(r13)
            r5 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r7 = r3 & r5
            boolean r10 = access$isClosedForSend0(r13, r3)
            int r3 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r4 = (long) r3
            long r4 = r7 / r4
            long r11 = (long) r3
            long r11 = r7 % r11
            int r3 = (int) r11
            long r11 = r1.id
            int r6 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            r11 = 0
            if (r6 == 0) goto L5d
            kotlinx.coroutines.channels.ChannelSegment r4 = access$findSegmentSend(r13, r4, r1)
            if (r4 != 0) goto L59
            if (r10 == 0) goto L20
        L4b:
            kotlin.Result$Companion r13 = kotlin.Result.Companion
            java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r11)
            java.lang.Object r13 = kotlin.Result.m438constructorimpl(r13)
            r0.resumeWith(r13)
            goto Lab
        L59:
            r6 = r14
            r5 = r3
            r3 = r13
            goto L5f
        L5d:
            r4 = r1
            goto L59
        L5f:
            int r13 = access$updateCellSend(r3, r4, r5, r6, r7, r9, r10)
            r1 = r4
            if (r13 == 0) goto La7
            if (r13 == r2) goto L99
            r14 = 2
            if (r13 == r14) goto L8f
            r14 = 3
            if (r13 == r14) goto L87
            r14 = 4
            if (r13 == r14) goto L7b
            r14 = 5
            if (r13 == r14) goto L75
            goto L78
        L75:
            r1.cleanPrev()
        L78:
            r13 = r3
            r14 = r6
            goto L20
        L7b:
            long r13 = r3.getReceiversCounter$kotlinx_coroutines_core()
            int r13 = (r7 > r13 ? 1 : (r7 == r13 ? 0 : -1))
            if (r13 >= 0) goto L4b
            r1.cleanPrev()
            goto L4b
        L87:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "unexpected"
            r13.<init>(r14)
            throw r13
        L8f:
            if (r10 == 0) goto L95
            r1.onSlotCleaned()
            goto L4b
        L95:
            access$prepareSenderForSuspension(r3, r9, r1, r5)
            goto Lab
        L99:
            kotlin.Result$Companion r13 = kotlin.Result.Companion
            java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            java.lang.Object r13 = kotlin.Result.m438constructorimpl(r13)
            r0.resumeWith(r13)
            goto Lab
        La7:
            r1.cleanPrev()
            goto L99
        Lab:
            java.lang.Object r13 = r0.getResult()
            java.lang.Object r14 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r13 != r14) goto Lb8
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r15)
        Lb8:
            return r13
        Lb9:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "the `onUndeliveredElement` feature is unsupported for `sendBroadcast(e)`"
            r13.<init>(r14)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.sendBroadcast$suspendImpl(kotlinx.coroutines.channels.BufferedChannel, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final <R> R sendImpl(E e, Object obj, Function0<? extends R> function0, Function2<? super ChannelSegment<E>, ? super Integer, ? extends R> function2, Function0<? extends R> function02, Function4<? super ChannelSegment<E>, ? super Integer, ? super E, ? super Long, ? extends R> function4) {
        BufferedChannel<E> bufferedChannel;
        E e2;
        Object obj2;
        Waiter waiter;
        ChannelSegment channelSegment = (ChannelSegment) sendSegment$volatile$FU.get(this);
        while (true) {
            long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(this);
            long j = 1152921504606846975L & andIncrement;
            boolean isClosedForSend0 = isClosedForSend0(andIncrement);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (channelSegment.id != j2) {
                ChannelSegment findSegmentSend = findSegmentSend(j2, channelSegment);
                if (findSegmentSend == null) {
                    if (isClosedForSend0) {
                        return function02.invoke();
                    }
                } else {
                    channelSegment = findSegmentSend;
                    bufferedChannel = this;
                    obj2 = obj;
                    e2 = e;
                }
            } else {
                bufferedChannel = this;
                e2 = e;
                obj2 = obj;
            }
            int updateCellSend = bufferedChannel.updateCellSend(channelSegment, i2, e2, j, obj2, isClosedForSend0);
            if (updateCellSend != 0) {
                if (updateCellSend != 1) {
                    if (updateCellSend != 2) {
                        if (updateCellSend != 3) {
                            if (updateCellSend != 4) {
                                if (updateCellSend == 5) {
                                    channelSegment.cleanPrev();
                                }
                            } else {
                                if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                                    channelSegment.cleanPrev();
                                }
                                return function02.invoke();
                            }
                        } else {
                            return function4.invoke(channelSegment, Integer.valueOf(i2), e, Long.valueOf(j));
                        }
                    } else if (isClosedForSend0) {
                        channelSegment.onSlotCleaned();
                        return function02.invoke();
                    } else {
                        if (obj instanceof Waiter) {
                            waiter = (Waiter) obj;
                        } else {
                            waiter = null;
                        }
                        if (waiter != null) {
                            prepareSenderForSuspension(waiter, channelSegment, i2);
                        }
                        return function2.invoke(channelSegment, Integer.valueOf(i2));
                    }
                } else {
                    return function0.invoke();
                }
            } else {
                channelSegment.cleanPrev();
                return function0.invoke();
            }
        }
    }

    public static /* synthetic */ Object sendImpl$default(BufferedChannel bufferedChannel, Object obj, Object obj2, Function0 function0, Function2 function2, Function0 function02, Function4 function4, int i, Object obj3) {
        BufferedChannel bufferedChannel2;
        Object obj4;
        Object obj5;
        if (obj3 == null) {
            BufferedChannel$sendImpl$1 bufferedChannel$sendImpl$1 = (i & 32) != 0 ? new Function4() { // from class: kotlinx.coroutines.channels.BufferedChannel$sendImpl$1
                @Override // kotlin.jvm.functions.Function4
                public /* bridge */ /* synthetic */ Object invoke(Object obj6, Object obj7, Object obj8, Object obj9) {
                    return invoke((ChannelSegment<int>) obj6, ((Number) obj7).intValue(), (int) obj8, ((Number) obj9).longValue());
                }

                public final Void invoke(ChannelSegment<E> channelSegment, int i2, E e, long j) {
                    throw new IllegalStateException("unexpected");
                }
            } : function4;
            ChannelSegment channelSegment = (ChannelSegment) sendSegment$volatile$FU.get(bufferedChannel);
            while (true) {
                long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(bufferedChannel);
                long j = 1152921504606846975L & andIncrement;
                boolean isClosedForSend0 = bufferedChannel.isClosedForSend0(andIncrement);
                int i2 = BufferedChannelKt.SEGMENT_SIZE;
                long j2 = j / i2;
                int i3 = (int) (j % i2);
                if (channelSegment.id != j2) {
                    ChannelSegment findSegmentSend = bufferedChannel.findSegmentSend(j2, channelSegment);
                    if (findSegmentSend != null) {
                        channelSegment = findSegmentSend;
                        bufferedChannel2 = bufferedChannel;
                        obj5 = obj2;
                        obj4 = obj;
                    } else if (isClosedForSend0) {
                        return function02.invoke();
                    }
                } else {
                    bufferedChannel2 = bufferedChannel;
                    obj4 = obj;
                    obj5 = obj2;
                }
                int updateCellSend = bufferedChannel2.updateCellSend(channelSegment, i3, obj4, j, obj5, isClosedForSend0);
                if (updateCellSend == 0) {
                    channelSegment.cleanPrev();
                    return function0.invoke();
                } else if (updateCellSend == 1) {
                    return function0.invoke();
                } else {
                    if (updateCellSend == 2) {
                        if (isClosedForSend0) {
                            channelSegment.onSlotCleaned();
                            return function02.invoke();
                        }
                        Waiter waiter = obj2 instanceof Waiter ? (Waiter) obj2 : null;
                        if (waiter != null) {
                            bufferedChannel.prepareSenderForSuspension(waiter, channelSegment, i3);
                        }
                        return function2.invoke(channelSegment, Integer.valueOf(i3));
                    } else if (updateCellSend == 3) {
                        return bufferedChannel$sendImpl$1.invoke(channelSegment, Integer.valueOf(i3), obj, Long.valueOf(j));
                    } else {
                        if (updateCellSend == 4) {
                            if (j < bufferedChannel.getReceiversCounter$kotlinx_coroutines_core()) {
                                channelSegment.cleanPrev();
                            }
                            return function02.invoke();
                        } else if (updateCellSend == 5) {
                            channelSegment.cleanPrev();
                        }
                    }
                }
            }
        } else {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendImpl");
        }
    }

    private final void sendImplOnNoWaiter(ChannelSegment<E> channelSegment, int i, E e, long j, Waiter waiter, Function0<Unit> function0, Function0<Unit> function02) {
        BufferedChannel<E> bufferedChannel;
        E e2;
        Waiter waiter2;
        Unit unit;
        Waiter waiter3;
        int updateCellSend = updateCellSend(channelSegment, i, e, j, waiter, false);
        if (updateCellSend != 0) {
            if (updateCellSend != 1) {
                if (updateCellSend == 2) {
                    prepareSenderForSuspension(waiter, channelSegment, i);
                    return;
                } else if (updateCellSend != 4) {
                    String str = "unexpected";
                    if (updateCellSend == 5) {
                        channelSegment.cleanPrev();
                        ChannelSegment channelSegment2 = (ChannelSegment) sendSegment$volatile$FU.get(this);
                        while (true) {
                            long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(this);
                            long j2 = 1152921504606846975L & andIncrement;
                            boolean isClosedForSend0 = isClosedForSend0(andIncrement);
                            int i2 = BufferedChannelKt.SEGMENT_SIZE;
                            long j3 = j2 / i2;
                            int i3 = (int) (j2 % i2);
                            String str2 = str;
                            if (channelSegment2.id != j3) {
                                ChannelSegment findSegmentSend = findSegmentSend(j3, channelSegment2);
                                if (findSegmentSend == null) {
                                    if (isClosedForSend0) {
                                        unit = function02.invoke();
                                        break;
                                    }
                                    str = str2;
                                } else {
                                    channelSegment2 = findSegmentSend;
                                    bufferedChannel = this;
                                    waiter2 = waiter;
                                    e2 = e;
                                }
                            } else {
                                bufferedChannel = this;
                                e2 = e;
                                waiter2 = waiter;
                            }
                            int updateCellSend2 = bufferedChannel.updateCellSend(channelSegment2, i3, e2, j2, waiter2, isClosedForSend0);
                            if (updateCellSend2 != 0) {
                                if (updateCellSend2 != 1) {
                                    if (updateCellSend2 != 2) {
                                        if (updateCellSend2 != 3) {
                                            if (updateCellSend2 != 4) {
                                                if (updateCellSend2 == 5) {
                                                    channelSegment2.cleanPrev();
                                                }
                                                str = str2;
                                            } else {
                                                if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                                                    channelSegment2.cleanPrev();
                                                }
                                                unit = function02.invoke();
                                            }
                                        } else {
                                            throw new IllegalStateException(str2);
                                        }
                                    } else if (isClosedForSend0) {
                                        channelSegment2.onSlotCleaned();
                                        unit = function02.invoke();
                                    } else {
                                        if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(waiter)) {
                                            waiter3 = waiter;
                                        } else {
                                            waiter3 = null;
                                        }
                                        if (waiter3 != null) {
                                            prepareSenderForSuspension(waiter3, channelSegment2, i3);
                                        }
                                        unit = Unit.INSTANCE;
                                    }
                                } else {
                                    unit = function0.invoke();
                                    break;
                                }
                            } else {
                                channelSegment2.cleanPrev();
                                unit = function0.invoke();
                                break;
                            }
                        }
                        return;
                    }
                    throw new IllegalStateException("unexpected");
                } else {
                    if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    function02.invoke();
                    return;
                }
            }
            function0.invoke();
            return;
        }
        channelSegment.cleanPrev();
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x010d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object sendOnNoWaiterSuspend(kotlinx.coroutines.channels.ChannelSegment<E> r17, int r18, E r19, long r20, kotlin.coroutines.Continuation<? super kotlin.Unit> r22) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.sendOnNoWaiterSuspend(kotlinx.coroutines.channels.ChannelSegment, int, java.lang.Object, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final /* synthetic */ void setBufferEnd$volatile(long j) {
        this.bufferEnd$volatile = j;
    }

    private final /* synthetic */ void setBufferEndSegment$volatile(Object obj) {
        this.bufferEndSegment$volatile = obj;
    }

    private final /* synthetic */ void setCloseHandler$volatile(Object obj) {
        this.closeHandler$volatile = obj;
    }

    private final /* synthetic */ void setCompletedExpandBuffersAndPauseFlag$volatile(long j) {
        this.completedExpandBuffersAndPauseFlag$volatile = j;
    }

    private final /* synthetic */ void setReceiveSegment$volatile(Object obj) {
        this.receiveSegment$volatile = obj;
    }

    private final /* synthetic */ void setReceivers$volatile(long j) {
        this.receivers$volatile = j;
    }

    private final /* synthetic */ void setSendSegment$volatile(Object obj) {
        this.sendSegment$volatile = obj;
    }

    private final /* synthetic */ void setSendersAndCloseStatus$volatile(long j) {
        this.sendersAndCloseStatus$volatile = j;
    }

    private final /* synthetic */ void set_closeCause$volatile(Object obj) {
        this._closeCause$volatile = obj;
    }

    private final boolean shouldSendSuspend(long j) {
        if (isClosedForSend0(j)) {
            return false;
        }
        return !bufferOrRendezvousSend(j & 1152921504606846975L);
    }

    private final boolean tryResumeReceiver(Object obj, E e) {
        boolean tryResume0;
        boolean tryResume02;
        if (obj instanceof SelectInstance) {
            return ((SelectInstance) obj).trySelect(this, e);
        }
        KFunction<Unit> kFunction = null;
        if (obj instanceof ReceiveCatching) {
            CancellableContinuationImpl<ChannelResult<? extends E>> cancellableContinuationImpl = ((ReceiveCatching) obj).cont;
            ChannelResult m1927boximpl = ChannelResult.m1927boximpl(ChannelResult.Companion.m1942successJP2dKIU(e));
            Function1<E, Unit> function1 = this.onUndeliveredElement;
            if (function1 != null) {
                kFunction = bindCancellationFunResult(function1);
            }
            tryResume02 = BufferedChannelKt.tryResume0(cancellableContinuationImpl, m1927boximpl, (Function3) kFunction);
            return tryResume02;
        } else if (obj instanceof BufferedChannelIterator) {
            return ((BufferedChannelIterator) obj).tryResumeHasNext(e);
        } else {
            if (obj instanceof CancellableContinuation) {
                CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
                Function1<E, Unit> function12 = this.onUndeliveredElement;
                if (function12 != null) {
                    kFunction = bindCancellationFun(function12);
                }
                tryResume0 = BufferedChannelKt.tryResume0(cancellableContinuation, e, (Function3) kFunction);
                return tryResume0;
            }
            throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
        }
    }

    private final boolean tryResumeSender(Object obj, ChannelSegment<E> channelSegment, int i) {
        if (obj instanceof CancellableContinuation) {
            return BufferedChannelKt.tryResume0$default((CancellableContinuation) obj, Unit.INSTANCE, null, 2, null);
        }
        if (obj instanceof SelectInstance) {
            TrySelectDetailedResult trySelectDetailed = ((SelectImplementation) obj).trySelectDetailed(this, Unit.INSTANCE);
            if (trySelectDetailed == TrySelectDetailedResult.REREGISTER) {
                channelSegment.cleanElement$kotlinx_coroutines_core(i);
            }
            if (trySelectDetailed == TrySelectDetailedResult.SUCCESSFUL) {
                return true;
            }
            return false;
        } else if (obj instanceof SendBroadcast) {
            return BufferedChannelKt.tryResume0$default(((SendBroadcast) obj).getCont(), Boolean.TRUE, null, 2, null);
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
        }
    }

    private final /* synthetic */ void update$atomicfu$ATOMIC_FIELD_UPDATER$Long(AtomicLongFieldUpdater atomicLongFieldUpdater, Object obj, Function1<? super Long, Long> function1) {
        while (true) {
            long j = atomicLongFieldUpdater.get(obj);
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = atomicLongFieldUpdater;
            Object obj2 = obj;
            if (atomicLongFieldUpdater2.compareAndSet(obj2, j, function1.invoke(Long.valueOf(j)).longValue())) {
                return;
            }
            atomicLongFieldUpdater = atomicLongFieldUpdater2;
            obj = obj2;
        }
    }

    private final boolean updateCellExpandBuffer(ChannelSegment<E> channelSegment, int i, long j) {
        Symbol symbol;
        Symbol symbol2;
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        if ((state$kotlinx_coroutines_core instanceof Waiter) && j >= receivers$volatile$FU.get(this)) {
            symbol = BufferedChannelKt.RESUMING_BY_EB;
            if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, symbol)) {
                if (!tryResumeSender(state$kotlinx_coroutines_core, channelSegment, i)) {
                    symbol2 = BufferedChannelKt.INTERRUPTED_SEND;
                    channelSegment.setState$kotlinx_coroutines_core(i, symbol2);
                    channelSegment.onCancelledRequest(i, false);
                    return false;
                }
                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
                return true;
            }
        }
        return updateCellExpandBufferSlow(channelSegment, i, j);
    }

    private final boolean updateCellExpandBufferSlow(ChannelSegment<E> channelSegment, int i, long j) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        Symbol symbol8;
        while (true) {
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (!(state$kotlinx_coroutines_core instanceof Waiter)) {
                symbol3 = BufferedChannelKt.INTERRUPTED_SEND;
                if (state$kotlinx_coroutines_core == symbol3) {
                    return false;
                }
                if (state$kotlinx_coroutines_core == null) {
                    symbol4 = BufferedChannelKt.IN_BUFFER;
                    if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, symbol4)) {
                        return true;
                    }
                } else if (state$kotlinx_coroutines_core != BufferedChannelKt.BUFFERED) {
                    symbol5 = BufferedChannelKt.POISONED;
                    if (state$kotlinx_coroutines_core == symbol5) {
                        break;
                    }
                    symbol6 = BufferedChannelKt.DONE_RCV;
                    if (state$kotlinx_coroutines_core == symbol6) {
                        break;
                    }
                    symbol7 = BufferedChannelKt.INTERRUPTED_RCV;
                    if (state$kotlinx_coroutines_core != symbol7 && state$kotlinx_coroutines_core != BufferedChannelKt.getCHANNEL_CLOSED()) {
                        symbol8 = BufferedChannelKt.RESUMING_BY_RCV;
                        if (state$kotlinx_coroutines_core != symbol8) {
                            throw new IllegalStateException(("Unexpected cell state: " + state$kotlinx_coroutines_core).toString());
                        }
                    } else {
                        return true;
                    }
                } else {
                    return true;
                }
            } else if (j >= receivers$volatile$FU.get(this)) {
                symbol = BufferedChannelKt.RESUMING_BY_EB;
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, symbol)) {
                    if (!tryResumeSender(state$kotlinx_coroutines_core, channelSegment, i)) {
                        symbol2 = BufferedChannelKt.INTERRUPTED_SEND;
                        channelSegment.setState$kotlinx_coroutines_core(i, symbol2);
                        channelSegment.onCancelledRequest(i, false);
                        return false;
                    }
                    channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
                    return true;
                }
            } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, new WaiterEB((Waiter) state$kotlinx_coroutines_core))) {
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object updateCellReceive(ChannelSegment<E> channelSegment, int i, long j, Object obj) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        if (state$kotlinx_coroutines_core == null) {
            if (j >= (sendersAndCloseStatus$volatile$FU.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    symbol3 = BufferedChannelKt.SUSPEND_NO_WAITER;
                    return symbol3;
                } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, obj)) {
                    expandBuffer();
                    symbol2 = BufferedChannelKt.SUSPEND;
                    return symbol2;
                }
            }
        } else if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
            symbol = BufferedChannelKt.DONE_RCV;
            if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, symbol)) {
                expandBuffer();
                return channelSegment.retrieveElement$kotlinx_coroutines_core(i);
            }
        }
        return updateCellReceiveSlow(channelSegment, i, j, obj);
    }

    private final Object updateCellReceiveSlow(ChannelSegment<E> channelSegment, int i, long j, Object obj) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        Symbol symbol8;
        Symbol symbol9;
        Symbol symbol10;
        Symbol symbol11;
        Symbol symbol12;
        Symbol symbol13;
        Symbol symbol14;
        Symbol symbol15;
        Symbol symbol16;
        while (true) {
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core != null) {
                symbol5 = BufferedChannelKt.IN_BUFFER;
                if (state$kotlinx_coroutines_core != symbol5) {
                    if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
                        symbol6 = BufferedChannelKt.DONE_RCV;
                        if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, symbol6)) {
                            expandBuffer();
                            return channelSegment.retrieveElement$kotlinx_coroutines_core(i);
                        }
                    } else {
                        symbol7 = BufferedChannelKt.INTERRUPTED_SEND;
                        if (state$kotlinx_coroutines_core == symbol7) {
                            symbol8 = BufferedChannelKt.FAILED;
                            return symbol8;
                        }
                        symbol9 = BufferedChannelKt.POISONED;
                        if (state$kotlinx_coroutines_core == symbol9) {
                            symbol10 = BufferedChannelKt.FAILED;
                            return symbol10;
                        } else if (state$kotlinx_coroutines_core != BufferedChannelKt.getCHANNEL_CLOSED()) {
                            symbol12 = BufferedChannelKt.RESUMING_BY_EB;
                            if (state$kotlinx_coroutines_core != symbol12) {
                                symbol13 = BufferedChannelKt.RESUMING_BY_RCV;
                                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, symbol13)) {
                                    boolean z = state$kotlinx_coroutines_core instanceof WaiterEB;
                                    if (z) {
                                        state$kotlinx_coroutines_core = ((WaiterEB) state$kotlinx_coroutines_core).waiter;
                                    }
                                    if (tryResumeSender(state$kotlinx_coroutines_core, channelSegment, i)) {
                                        symbol16 = BufferedChannelKt.DONE_RCV;
                                        channelSegment.setState$kotlinx_coroutines_core(i, symbol16);
                                        expandBuffer();
                                        return channelSegment.retrieveElement$kotlinx_coroutines_core(i);
                                    }
                                    symbol14 = BufferedChannelKt.INTERRUPTED_SEND;
                                    channelSegment.setState$kotlinx_coroutines_core(i, symbol14);
                                    channelSegment.onCancelledRequest(i, false);
                                    if (z) {
                                        expandBuffer();
                                    }
                                    symbol15 = BufferedChannelKt.FAILED;
                                    return symbol15;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            expandBuffer();
                            symbol11 = BufferedChannelKt.FAILED;
                            return symbol11;
                        }
                    }
                }
            }
            if (j < (sendersAndCloseStatus$volatile$FU.get(this) & 1152921504606846975L)) {
                symbol = BufferedChannelKt.POISONED;
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, symbol)) {
                    expandBuffer();
                    symbol2 = BufferedChannelKt.FAILED;
                    return symbol2;
                }
            } else if (obj == null) {
                symbol3 = BufferedChannelKt.SUSPEND_NO_WAITER;
                return symbol3;
            } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, obj)) {
                expandBuffer();
                symbol4 = BufferedChannelKt.SUSPEND;
                return symbol4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int updateCellSend(ChannelSegment<E> channelSegment, int i, E e, long j, Object obj, boolean z) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        channelSegment.storeElement$kotlinx_coroutines_core(i, e);
        if (z) {
            return updateCellSendSlow(channelSegment, i, e, j, obj, z);
        }
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        if (state$kotlinx_coroutines_core == null) {
            if (bufferOrRendezvousSend(j)) {
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else if (obj == null) {
                return 3;
            } else {
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, obj)) {
                    return 2;
                }
            }
        } else if (state$kotlinx_coroutines_core instanceof Waiter) {
            channelSegment.cleanElement$kotlinx_coroutines_core(i);
            if (tryResumeReceiver(state$kotlinx_coroutines_core, e)) {
                symbol3 = BufferedChannelKt.DONE_RCV;
                channelSegment.setState$kotlinx_coroutines_core(i, symbol3);
                onReceiveDequeued();
                return 0;
            }
            symbol = BufferedChannelKt.INTERRUPTED_RCV;
            Object andSetState$kotlinx_coroutines_core = channelSegment.getAndSetState$kotlinx_coroutines_core(i, symbol);
            symbol2 = BufferedChannelKt.INTERRUPTED_RCV;
            if (andSetState$kotlinx_coroutines_core != symbol2) {
                channelSegment.onCancelledRequest(i, true);
                return 5;
            }
            return 5;
        }
        return updateCellSendSlow(channelSegment, i, e, j, obj, z);
    }

    private final int updateCellSendSlow(ChannelSegment<E> channelSegment, int i, E e, long j, Object obj, boolean z) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        while (true) {
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core != null) {
                symbol2 = BufferedChannelKt.IN_BUFFER;
                if (state$kotlinx_coroutines_core != symbol2) {
                    symbol3 = BufferedChannelKt.INTERRUPTED_RCV;
                    if (state$kotlinx_coroutines_core != symbol3) {
                        symbol4 = BufferedChannelKt.POISONED;
                        if (state$kotlinx_coroutines_core == symbol4) {
                            channelSegment.cleanElement$kotlinx_coroutines_core(i);
                            return 5;
                        } else if (state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                            channelSegment.cleanElement$kotlinx_coroutines_core(i);
                            completeCloseOrCancel();
                            return 4;
                        } else {
                            channelSegment.cleanElement$kotlinx_coroutines_core(i);
                            if (state$kotlinx_coroutines_core instanceof WaiterEB) {
                                state$kotlinx_coroutines_core = ((WaiterEB) state$kotlinx_coroutines_core).waiter;
                            }
                            if (tryResumeReceiver(state$kotlinx_coroutines_core, e)) {
                                symbol7 = BufferedChannelKt.DONE_RCV;
                                channelSegment.setState$kotlinx_coroutines_core(i, symbol7);
                                onReceiveDequeued();
                                return 0;
                            }
                            symbol5 = BufferedChannelKt.INTERRUPTED_RCV;
                            Object andSetState$kotlinx_coroutines_core = channelSegment.getAndSetState$kotlinx_coroutines_core(i, symbol5);
                            symbol6 = BufferedChannelKt.INTERRUPTED_RCV;
                            if (andSetState$kotlinx_coroutines_core != symbol6) {
                                channelSegment.onCancelledRequest(i, true);
                            }
                            return 5;
                        }
                    }
                    channelSegment.cleanElement$kotlinx_coroutines_core(i);
                    return 5;
                } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else if (bufferOrRendezvousSend(j) && !z) {
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else if (z) {
                symbol = BufferedChannelKt.INTERRUPTED_SEND;
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, symbol)) {
                    channelSegment.onCancelledRequest(i, false);
                    return 4;
                }
            } else if (obj == null) {
                return 3;
            } else {
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, obj)) {
                    return 2;
                }
            }
        }
    }

    private final void updateReceiversCounterIfLower(long j) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$volatile$FU;
        while (true) {
            long j2 = atomicLongFieldUpdater.get(this);
            if (j2 < j) {
                long j3 = j;
                if (receivers$volatile$FU.compareAndSet(this, j2, j3)) {
                    return;
                }
                j = j3;
            } else {
                return;
            }
        }
    }

    private final void updateSendersCounterIfLower(long j) {
        long j2;
        long constructSendersAndCloseStatus;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            long j3 = 1152921504606846975L & j2;
            if (j3 < j) {
                constructSendersAndCloseStatus = BufferedChannelKt.constructSendersAndCloseStatus(j3, (int) (j2 >> 60));
            } else {
                return;
            }
        } while (!sendersAndCloseStatus$volatile$FU.compareAndSet(this, j2, constructSendersAndCloseStatus));
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final boolean cancel(@Nullable Throwable th) {
        return cancelImpl$kotlinx_coroutines_core(th);
    }

    public boolean cancelImpl$kotlinx_coroutines_core(@Nullable Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel was cancelled");
        }
        return closeOrCancelImpl(th, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00cd A[LOOP:2: B:30:0x00cd->B:81:0x01d4, LOOP_START, PHI: r1 
      PHI: (r1v15 kotlinx.coroutines.channels.ChannelSegment) = (r1v12 kotlinx.coroutines.channels.ChannelSegment), (r1v17 kotlinx.coroutines.channels.ChannelSegment) binds: [B:29:0x00cb, B:81:0x01d4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void checkSegmentStructureInvariants() {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.checkSegmentStructureInvariants():void");
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean close(@Nullable Throwable th) {
        return closeOrCancelImpl(th, false);
    }

    public boolean closeOrCancelImpl(@Nullable Throwable th, boolean z) {
        Symbol symbol;
        if (z) {
            markCancellationStarted();
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _closeCause$volatile$FU;
        symbol = BufferedChannelKt.NO_CLOSE_CAUSE;
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReferenceFieldUpdater, this, symbol, th);
        if (z) {
            markCancelled();
        } else {
            markClosed();
        }
        completeCloseOrCancel();
        onClosedIdempotent();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            invokeCloseHandler();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final void dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(long j) {
        ChannelSegment<E> channelSegment;
        Symbol symbol;
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        ChannelSegment<E> channelSegment2 = (ChannelSegment) receiveSegment$volatile$FU.get(this);
        while (true) {
            long j2 = receivers$volatile$FU.get(this);
            if (j < Math.max(this.capacity + j2, getBufferEndCounter())) {
                return;
            }
            if (receivers$volatile$FU.compareAndSet(this, j2, 1 + j2)) {
                int i = BufferedChannelKt.SEGMENT_SIZE;
                long j3 = j2 / i;
                int i2 = (int) (j2 % i);
                if (channelSegment2.id != j3) {
                    channelSegment = findSegmentReceive(j3, channelSegment2);
                    if (channelSegment == null) {
                        continue;
                    }
                } else {
                    channelSegment = channelSegment2;
                }
                Object updateCellReceive = updateCellReceive(channelSegment, i2, j2, null);
                symbol = BufferedChannelKt.FAILED;
                if (updateCellReceive == symbol) {
                    if (j2 < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                } else {
                    channelSegment.cleanPrev();
                    Function1<E, Unit> function1 = this.onUndeliveredElement;
                    if (function1 != null && (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, updateCellReceive, null, 2, null)) != null) {
                        throw callUndeliveredElementCatchingException$default;
                    }
                }
                channelSegment2 = channelSegment;
            }
        }
    }

    @Nullable
    public final Throwable getCloseCause() {
        return (Throwable) _closeCause$volatile$FU.get(this);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<E> getOnReceive() {
        return new SelectClause1Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(BufferedChannel$onReceive$1.INSTANCE, 3), (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(BufferedChannel$onReceive$2.INSTANCE, 3), this.onUndeliveredElementReceiveCancellationConstructor);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<ChannelResult<E>> getOnReceiveCatching() {
        return new SelectClause1Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(BufferedChannel$onReceiveCatching$1.INSTANCE, 3), (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(BufferedChannel$onReceiveCatching$2.INSTANCE, 3), this.onUndeliveredElementReceiveCancellationConstructor);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<E> getOnReceiveOrNull() {
        return new SelectClause1Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(BufferedChannel$onReceiveOrNull$1.INSTANCE, 3), (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(BufferedChannel$onReceiveOrNull$2.INSTANCE, 3), this.onUndeliveredElementReceiveCancellationConstructor);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    public SelectClause2<E, BufferedChannel<E>> getOnSend() {
        return new SelectClause2Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(BufferedChannel$onSend$1.INSTANCE, 3), (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(BufferedChannel$onSend$2.INSTANCE, 3), null, 8, null);
    }

    public final long getReceiversCounter$kotlinx_coroutines_core() {
        return receivers$volatile$FU.get(this);
    }

    @NotNull
    public final Throwable getSendException() {
        Throwable closeCause = getCloseCause();
        if (closeCause == null) {
            return new ClosedSendChannelException(ChannelsKt.DEFAULT_CLOSE_MESSAGE);
        }
        return closeCause;
    }

    public final long getSendersCounter$kotlinx_coroutines_core() {
        return sendersAndCloseStatus$volatile$FU.get(this) & 1152921504606846975L;
    }

    public final boolean hasElements$kotlinx_coroutines_core() {
        while (true) {
            ChannelSegment<E> channelSegment = (ChannelSegment) receiveSegment$volatile$FU.get(this);
            long receiversCounter$kotlinx_coroutines_core = getReceiversCounter$kotlinx_coroutines_core();
            if (getSendersCounter$kotlinx_coroutines_core() <= receiversCounter$kotlinx_coroutines_core) {
                return false;
            }
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = receiversCounter$kotlinx_coroutines_core / i;
            if (channelSegment.id != j && (channelSegment = findSegmentReceive(j, channelSegment)) == null) {
                if (((ChannelSegment) receiveSegment$volatile$FU.get(this)).id < j) {
                    return false;
                }
            } else {
                channelSegment.cleanPrev();
                if (isCellNonEmpty(channelSegment, (int) (receiversCounter$kotlinx_coroutines_core % i), receiversCounter$kotlinx_coroutines_core)) {
                    return true;
                }
                receivers$volatile$FU.compareAndSet(this, receiversCounter$kotlinx_coroutines_core, 1 + receiversCounter$kotlinx_coroutines_core);
            }
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public void invokeOnClose(@NotNull Function1<? super Throwable, Unit> function1) {
        Symbol symbol;
        Symbol symbol2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Symbol symbol3;
        Symbol symbol4;
        if (!androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(closeHandler$volatile$FU, this, null, function1)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = closeHandler$volatile$FU;
            do {
                Object obj = atomicReferenceFieldUpdater2.get(this);
                symbol = BufferedChannelKt.CLOSE_HANDLER_CLOSED;
                if (obj == symbol) {
                    atomicReferenceFieldUpdater = closeHandler$volatile$FU;
                    symbol3 = BufferedChannelKt.CLOSE_HANDLER_CLOSED;
                    symbol4 = BufferedChannelKt.CLOSE_HANDLER_INVOKED;
                } else {
                    symbol2 = BufferedChannelKt.CLOSE_HANDLER_INVOKED;
                    if (obj == symbol2) {
                        throw new IllegalStateException("Another handler was already registered and successfully invoked");
                    }
                    throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
                }
            } while (!androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReferenceFieldUpdater, this, symbol3, symbol4));
            function1.invoke(getCloseCause());
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isClosedForReceive() {
        return isClosedForReceive0(sendersAndCloseStatus$volatile$FU.get(this));
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        return isClosedForSend0(sendersAndCloseStatus$volatile$FU.get(this));
    }

    public boolean isConflatedDropOldest() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        if (isClosedForReceive() || hasElements$kotlinx_coroutines_core()) {
            return false;
        }
        return !isClosedForReceive();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public ChannelIterator<E> iterator() {
        return new BufferedChannelIterator();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e) {
        return Channel.DefaultImpls.offer(this, e);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    public E poll() {
        return (E) Channel.DefaultImpls.poll(this);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public Object receive(@NotNull Continuation<? super E> continuation) {
        return receive$suspendImpl(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    /* renamed from: receiveCatching-JP2dKIU  reason: not valid java name */
    public Object mo1919receiveCatchingJP2dKIU(@NotNull Continuation<? super ChannelResult<? extends E>> continuation) {
        return m1917receiveCatchingJP2dKIU$suspendImpl(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @Nullable
    public Object receiveOrNull(@NotNull Continuation<? super E> continuation) {
        return Channel.DefaultImpls.receiveOrNull(this, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void registerSelectForSend(@NotNull SelectInstance<?> selectInstance, @Nullable Object obj) {
        ChannelSegment channelSegment;
        Waiter waiter;
        ChannelSegment channelSegment2 = (ChannelSegment) sendSegment$volatile$FU.get(this);
        while (true) {
            long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(this);
            long j = andIncrement & 1152921504606846975L;
            boolean isClosedForSend0 = isClosedForSend0(andIncrement);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (channelSegment2.id != j2) {
                ChannelSegment findSegmentSend = findSegmentSend(j2, channelSegment2);
                if (findSegmentSend == null) {
                    if (isClosedForSend0) {
                        onClosedSelectOnSend(obj, selectInstance);
                        return;
                    }
                } else {
                    channelSegment = findSegmentSend;
                }
            } else {
                channelSegment = channelSegment2;
            }
            SelectInstance<?> selectInstance2 = selectInstance;
            Object obj2 = obj;
            int updateCellSend = updateCellSend(channelSegment, i2, obj2, j, selectInstance2, isClosedForSend0);
            channelSegment2 = channelSegment;
            if (updateCellSend != 0) {
                if (updateCellSend != 1) {
                    if (updateCellSend != 2) {
                        if (updateCellSend != 3) {
                            if (updateCellSend != 4) {
                                if (updateCellSend == 5) {
                                    channelSegment2.cleanPrev();
                                }
                                obj = obj2;
                                selectInstance = selectInstance2;
                            } else {
                                if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                                    channelSegment2.cleanPrev();
                                }
                                onClosedSelectOnSend(obj2, selectInstance2);
                                return;
                            }
                        } else {
                            throw new IllegalStateException("unexpected");
                        }
                    } else if (isClosedForSend0) {
                        channelSegment2.onSlotCleaned();
                        onClosedSelectOnSend(obj2, selectInstance2);
                        return;
                    } else {
                        if (selectInstance2 instanceof Waiter) {
                            waiter = (Waiter) selectInstance2;
                        } else {
                            waiter = null;
                        }
                        if (waiter != null) {
                            prepareSenderForSuspension(waiter, channelSegment2, i2);
                            return;
                        }
                        return;
                    }
                } else {
                    selectInstance2.selectInRegistrationPhase(Unit.INSTANCE);
                    return;
                }
            } else {
                channelSegment2.cleanPrev();
                selectInstance2.selectInRegistrationPhase(Unit.INSTANCE);
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Nullable
    public Object send(E e, @NotNull Continuation<? super Unit> continuation) {
        return send$suspendImpl(this, e, continuation);
    }

    @Nullable
    public Object sendBroadcast$kotlinx_coroutines_core(E e, @NotNull Continuation<? super Boolean> continuation) {
        return sendBroadcast$suspendImpl(this, e, continuation);
    }

    public boolean shouldSendSuspend$kotlinx_coroutines_core() {
        return shouldSendSuspend(sendersAndCloseStatus$volatile$FU.get(this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x01df, code lost:
        r16 = r7;
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.getNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01e8, code lost:
        if (r3 != null) goto L106;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01df A[EDGE_INSN: B:106:0x01df->B:88:0x01df ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01f0  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0224  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toStringDebug$kotlinx_coroutines_core() {
        /*
            Method dump skipped, instructions count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toStringDebug$kotlinx_coroutines_core():java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    /* renamed from: tryReceive-PtdJZtk  reason: not valid java name */
    public Object mo1920tryReceivePtdJZtk() {
        Symbol symbol;
        ChannelSegment channelSegment;
        Symbol symbol2;
        Waiter waiter;
        Symbol symbol3;
        Symbol symbol4;
        long j = receivers$volatile$FU.get(this);
        long j2 = sendersAndCloseStatus$volatile$FU.get(this);
        if (isClosedForReceive0(j2)) {
            return ChannelResult.Companion.m1940closedJP2dKIU(getCloseCause());
        }
        if (j < (j2 & 1152921504606846975L)) {
            symbol = BufferedChannelKt.INTERRUPTED_RCV;
            ChannelSegment channelSegment2 = (ChannelSegment) access$getReceiveSegment$volatile$FU().get(this);
            while (!isClosedForReceive()) {
                long andIncrement = access$getReceivers$volatile$FU().getAndIncrement(this);
                int i = BufferedChannelKt.SEGMENT_SIZE;
                long j3 = andIncrement / i;
                int i2 = (int) (andIncrement % i);
                if (channelSegment2.id != j3) {
                    channelSegment = findSegmentReceive(j3, channelSegment2);
                    if (channelSegment == null) {
                        continue;
                    }
                } else {
                    channelSegment = channelSegment2;
                }
                Object updateCellReceive = updateCellReceive(channelSegment, i2, andIncrement, symbol);
                symbol2 = BufferedChannelKt.SUSPEND;
                if (updateCellReceive != symbol2) {
                    symbol3 = BufferedChannelKt.FAILED;
                    if (updateCellReceive != symbol3) {
                        symbol4 = BufferedChannelKt.SUSPEND_NO_WAITER;
                        if (updateCellReceive != symbol4) {
                            channelSegment.cleanPrev();
                            return ChannelResult.Companion.m1942successJP2dKIU(updateCellReceive);
                        }
                        throw new IllegalStateException("unexpected");
                    }
                    if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    channelSegment2 = channelSegment;
                } else {
                    if (symbol instanceof Waiter) {
                        waiter = (Waiter) symbol;
                    } else {
                        waiter = null;
                    }
                    if (waiter != null) {
                        prepareReceiverForSuspension(waiter, channelSegment, i2);
                    }
                    waitExpandBufferCompletion$kotlinx_coroutines_core(andIncrement);
                    channelSegment.onSlotCleaned();
                    return ChannelResult.Companion.m1941failurePtdJZtk();
                }
            }
            return ChannelResult.Companion.m1940closedJP2dKIU(getCloseCause());
        }
        return ChannelResult.Companion.m1941failurePtdJZtk();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    /* renamed from: trySend-JP2dKIU */
    public Object mo1913trySendJP2dKIU(E e) {
        Symbol symbol;
        ChannelSegment channelSegment;
        long j;
        BufferedChannel<E> bufferedChannel;
        Waiter waiter;
        if (!shouldSendSuspend(sendersAndCloseStatus$volatile$FU.get(this))) {
            symbol = BufferedChannelKt.INTERRUPTED_SEND;
            ChannelSegment channelSegment2 = (ChannelSegment) sendSegment$volatile$FU.get(this);
            while (true) {
                long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(this);
                long j2 = 1152921504606846975L & andIncrement;
                boolean isClosedForSend0 = isClosedForSend0(andIncrement);
                int i = BufferedChannelKt.SEGMENT_SIZE;
                long j3 = j2 / i;
                int i2 = (int) (j2 % i);
                if (channelSegment2.id != j3) {
                    channelSegment = findSegmentSend(j3, channelSegment2);
                    if (channelSegment == null) {
                        if (isClosedForSend0) {
                            return ChannelResult.Companion.m1940closedJP2dKIU(getSendException());
                        }
                    } else {
                        bufferedChannel = this;
                        j = j2;
                    }
                } else {
                    channelSegment = channelSegment2;
                    j = j2;
                    bufferedChannel = this;
                }
                E e2 = e;
                int updateCellSend = bufferedChannel.updateCellSend(channelSegment, i2, e2, j, symbol, isClosedForSend0);
                channelSegment2 = channelSegment;
                if (updateCellSend != 0) {
                    if (updateCellSend != 1) {
                        if (updateCellSend != 2) {
                            if (updateCellSend != 3) {
                                if (updateCellSend != 4) {
                                    if (updateCellSend == 5) {
                                        channelSegment2.cleanPrev();
                                    }
                                    e = e2;
                                } else {
                                    if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                                        channelSegment2.cleanPrev();
                                    }
                                    return ChannelResult.Companion.m1940closedJP2dKIU(getSendException());
                                }
                            } else {
                                throw new IllegalStateException("unexpected");
                            }
                        } else if (isClosedForSend0) {
                            channelSegment2.onSlotCleaned();
                            return ChannelResult.Companion.m1940closedJP2dKIU(getSendException());
                        } else {
                            if (symbol instanceof Waiter) {
                                waiter = (Waiter) symbol;
                            } else {
                                waiter = null;
                            }
                            if (waiter != null) {
                                prepareSenderForSuspension(waiter, channelSegment2, i2);
                            }
                            channelSegment2.onSlotCleaned();
                            return ChannelResult.Companion.m1941failurePtdJZtk();
                        }
                    } else {
                        return ChannelResult.Companion.m1942successJP2dKIU(Unit.INSTANCE);
                    }
                } else {
                    channelSegment2.cleanPrev();
                    return ChannelResult.Companion.m1942successJP2dKIU(Unit.INSTANCE);
                }
            }
        } else {
            return ChannelResult.Companion.m1941failurePtdJZtk();
        }
    }

    @NotNull
    /* renamed from: trySendDropOldest-JP2dKIU  reason: not valid java name */
    public final Object m1921trySendDropOldestJP2dKIU(E e) {
        ChannelSegment channelSegment;
        int i;
        BufferedChannel<E> bufferedChannel;
        Waiter waiter;
        Symbol symbol = BufferedChannelKt.BUFFERED;
        ChannelSegment channelSegment2 = (ChannelSegment) sendSegment$volatile$FU.get(this);
        while (true) {
            long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(this);
            long j = 1152921504606846975L & andIncrement;
            boolean isClosedForSend0 = isClosedForSend0(andIncrement);
            int i2 = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i2;
            int i3 = (int) (j % i2);
            if (channelSegment2.id != j2) {
                channelSegment = findSegmentSend(j2, channelSegment2);
                if (channelSegment == null) {
                    if (isClosedForSend0) {
                        return ChannelResult.Companion.m1940closedJP2dKIU(getSendException());
                    }
                } else {
                    bufferedChannel = this;
                    i = i3;
                }
            } else {
                channelSegment = channelSegment2;
                i = i3;
                bufferedChannel = this;
            }
            E e2 = e;
            int updateCellSend = bufferedChannel.updateCellSend(channelSegment, i, e2, j, symbol, isClosedForSend0);
            channelSegment2 = channelSegment;
            if (updateCellSend != 0) {
                if (updateCellSend != 1) {
                    if (updateCellSend != 2) {
                        if (updateCellSend != 3) {
                            if (updateCellSend != 4) {
                                if (updateCellSend == 5) {
                                    channelSegment2.cleanPrev();
                                }
                                e = e2;
                            } else {
                                if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                                    channelSegment2.cleanPrev();
                                }
                                return ChannelResult.Companion.m1940closedJP2dKIU(getSendException());
                            }
                        } else {
                            throw new IllegalStateException("unexpected");
                        }
                    } else if (isClosedForSend0) {
                        channelSegment2.onSlotCleaned();
                        return ChannelResult.Companion.m1940closedJP2dKIU(getSendException());
                    } else {
                        if (symbol instanceof Waiter) {
                            waiter = (Waiter) symbol;
                        } else {
                            waiter = null;
                        }
                        if (waiter != null) {
                            prepareSenderForSuspension(waiter, channelSegment2, i);
                        }
                        dropFirstElementUntilTheSpecifiedCellIsInTheBuffer((channelSegment2.id * i2) + i);
                        return ChannelResult.Companion.m1942successJP2dKIU(Unit.INSTANCE);
                    }
                } else {
                    return ChannelResult.Companion.m1942successJP2dKIU(Unit.INSTANCE);
                }
            } else {
                channelSegment2.cleanPrev();
                return ChannelResult.Companion.m1942successJP2dKIU(Unit.INSTANCE);
            }
        }
    }

    public final void waitExpandBufferCompletion$kotlinx_coroutines_core(long j) {
        int i;
        long constructEBCompletedAndPauseFlag;
        boolean z;
        long constructEBCompletedAndPauseFlag2;
        long constructEBCompletedAndPauseFlag3;
        BufferedChannel<E> bufferedChannel = this;
        if (!bufferedChannel.isRendezvousOrUnlimited()) {
            while (bufferedChannel.getBufferEndCounter() <= j) {
                bufferedChannel = this;
            }
            i = BufferedChannelKt.EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS;
            for (int i2 = 0; i2 < i; i2++) {
                long bufferEndCounter = bufferedChannel.getBufferEndCounter();
                if (bufferEndCounter == (DurationKt.MAX_MILLIS & completedExpandBuffersAndPauseFlag$volatile$FU.get(bufferedChannel)) && bufferEndCounter == bufferedChannel.getBufferEndCounter()) {
                    return;
                }
            }
            AtomicLongFieldUpdater atomicLongFieldUpdater = completedExpandBuffersAndPauseFlag$volatile$FU;
            while (true) {
                long j2 = atomicLongFieldUpdater.get(bufferedChannel);
                constructEBCompletedAndPauseFlag = BufferedChannelKt.constructEBCompletedAndPauseFlag(j2 & DurationKt.MAX_MILLIS, true);
                if (atomicLongFieldUpdater.compareAndSet(bufferedChannel, j2, constructEBCompletedAndPauseFlag)) {
                    break;
                }
                bufferedChannel = this;
            }
            while (true) {
                long bufferEndCounter2 = bufferedChannel.getBufferEndCounter();
                long j3 = completedExpandBuffersAndPauseFlag$volatile$FU.get(bufferedChannel);
                long j4 = j3 & DurationKt.MAX_MILLIS;
                if ((Longs.MAX_POWER_OF_TWO & j3) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (bufferEndCounter2 == j4 && bufferEndCounter2 == bufferedChannel.getBufferEndCounter()) {
                    break;
                } else if (!z) {
                    AtomicLongFieldUpdater atomicLongFieldUpdater2 = completedExpandBuffersAndPauseFlag$volatile$FU;
                    constructEBCompletedAndPauseFlag2 = BufferedChannelKt.constructEBCompletedAndPauseFlag(j4, true);
                    bufferedChannel = this;
                    atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j3, constructEBCompletedAndPauseFlag2);
                } else {
                    bufferedChannel = this;
                }
            }
            AtomicLongFieldUpdater atomicLongFieldUpdater3 = completedExpandBuffersAndPauseFlag$volatile$FU;
            while (true) {
                long j5 = atomicLongFieldUpdater3.get(bufferedChannel);
                constructEBCompletedAndPauseFlag3 = BufferedChannelKt.constructEBCompletedAndPauseFlag(j5 & DurationKt.MAX_MILLIS, false);
                boolean compareAndSet = atomicLongFieldUpdater3.compareAndSet(bufferedChannel, j5, constructEBCompletedAndPauseFlag3);
                AtomicLongFieldUpdater atomicLongFieldUpdater4 = atomicLongFieldUpdater3;
                if (compareAndSet) {
                    return;
                }
                atomicLongFieldUpdater3 = atomicLongFieldUpdater4;
                bufferedChannel = this;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KFunction<Unit> bindCancellationFun(Function1<? super E, Unit> function1) {
        return new BufferedChannel$bindCancellationFun$2(this);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel() {
        cancelImpl$kotlinx_coroutines_core(null);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel(@Nullable CancellationException cancellationException) {
        cancelImpl$kotlinx_coroutines_core(cancellationException);
    }

    public /* synthetic */ BufferedChannel(int i, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : function1);
    }

    public static /* synthetic */ void getOnReceive$annotations() {
    }

    public static /* synthetic */ void getOnReceiveCatching$annotations() {
    }

    public static /* synthetic */ void getOnReceiveOrNull$annotations() {
    }

    public static /* synthetic */ void getOnSend$annotations() {
    }

    private static /* synthetic */ void getOnUndeliveredElementReceiveCancellationConstructor$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isClosedForReceive$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isClosedForSend$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isEmpty$annotations() {
    }

    public void onClosedIdempotent() {
    }

    public void onReceiveDequeued() {
    }

    public void onReceiveEnqueued() {
    }
}
