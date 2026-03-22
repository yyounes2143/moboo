package coil.request;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.MainThread;
import androidx.annotation.Px;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.lifecycle.Lifecycle;
import coil.decode.Decoder;
import coil.fetch.Fetcher;
import coil.memory.MemoryCache;
import coil.request.Parameters;
import coil.size.DisplaySizeResolver;
import coil.size.Precision;
import coil.size.Scale;
import coil.size.Size;
import coil.size.SizeResolver;
import coil.size.SizeResolvers;
import coil.size.Sizes;
import coil.size.ViewSizeResolver;
import coil.size.ViewSizeResolvers;
import coil.target.Target;
import coil.target.ViewTarget;
import coil.transform.Transformation;
import coil.transition.Transition;
import coil.util.Contexts;
import coil.util.Requests;
import coil.util.Utils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\bj\u0018\u00002\u00020\u0001:\u0004¯\u0001°\u0001B÷\u0002\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u001c\u0010\u0016\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0015\u0018\u00010\u0013\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010$\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u0010&\u001a\u00020\"\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010)\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020'\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010-\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020+\u0012\u0006\u0010/\u001a\u00020+\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u00103\u001a\u000202\u0012\u0006\u00105\u001a\u000204\u0012\u0006\u00107\u001a\u000206\u0012\b\u00108\u001a\u0004\u0018\u00010\t\u0012\b\u0010:\u001a\u0004\u0018\u000109\u0012\b\u0010<\u001a\u0004\u0018\u00010;\u0012\b\u0010=\u001a\u0004\u0018\u000109\u0012\b\u0010>\u001a\u0004\u0018\u00010;\u0012\b\u0010?\u001a\u0004\u0018\u000109\u0012\b\u0010@\u001a\u0004\u0018\u00010;\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010D\u001a\u00020C¢\u0006\u0004\bE\u0010FJ\u0019\u0010H\u001a\u00020G2\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\bH\u0010IJ\u001a\u0010K\u001a\u00020\"2\b\u0010J\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\bK\u0010LJ\u000f\u0010M\u001a\u000209H\u0016¢\u0006\u0004\bM\u0010NR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\u0017\u0010\u0004\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b_\u0010`\u001a\u0004\ba\u0010bR\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006¢\u0006\f\n\u0004\bc\u0010d\u001a\u0004\be\u0010fR\u0017\u0010\u000e\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\bg\u0010h\u001a\u0004\bi\u0010jR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\bk\u0010l\u001a\u0004\bm\u0010nR\u0017\u0010\u0012\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\bo\u0010p\u001a\u0004\bq\u0010rR-\u0010\u0016\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0015\u0018\u00010\u00138\u0006¢\u0006\f\n\u0004\bi\u0010s\u001a\u0004\bt\u0010uR\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006¢\u0006\f\n\u0004\bm\u0010v\u001a\u0004\bw\u0010xR\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00198\u0006¢\u0006\f\n\u0004\bQ\u0010y\u001a\u0004\bz\u0010{R\u0017\u0010\u001d\u001a\u00020\u001c8\u0006¢\u0006\f\n\u0004\bU\u0010|\u001a\u0004\b}\u0010~R\u001a\u0010\u001f\u001a\u00020\u001e8\u0006¢\u0006\u000f\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001a\u0010!\u001a\u00020 8\u0006¢\u0006\u000f\n\u0005\bw\u0010\u0083\u0001\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001a\u0010#\u001a\u00020\"8\u0006¢\u0006\u000f\n\u0006\b\u0086\u0001\u0010\u0087\u0001\u001a\u0005\bg\u0010\u0088\u0001R\u001a\u0010$\u001a\u00020\"8\u0006¢\u0006\u000f\n\u0006\b\u0089\u0001\u0010\u0087\u0001\u001a\u0005\bk\u0010\u0088\u0001R\u0019\u0010%\u001a\u00020\"8\u0006¢\u0006\u000e\n\u0005\be\u0010\u0087\u0001\u001a\u0005\bo\u0010\u0088\u0001R\u001b\u0010&\u001a\u00020\"8\u0006¢\u0006\u0010\n\u0006\b\u008a\u0001\u0010\u0087\u0001\u001a\u0006\b\u008b\u0001\u0010\u0088\u0001R\u001b\u0010(\u001a\u00020'8\u0006¢\u0006\u0010\n\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001b\u0010)\u001a\u00020'8\u0006¢\u0006\u0010\n\u0006\b\u0090\u0001\u0010\u008d\u0001\u001a\u0006\b\u008a\u0001\u0010\u008f\u0001R\u001b\u0010*\u001a\u00020'8\u0006¢\u0006\u0010\n\u0006\b\u0091\u0001\u0010\u008d\u0001\u001a\u0006\b\u0092\u0001\u0010\u008f\u0001R\u001a\u0010,\u001a\u00020+8\u0006¢\u0006\u000f\n\u0005\bt\u0010\u0093\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001R\u001b\u0010-\u001a\u00020+8\u0006¢\u0006\u0010\n\u0006\b\u0081\u0001\u0010\u0093\u0001\u001a\u0006\b\u0091\u0001\u0010\u0095\u0001R\u001a\u0010.\u001a\u00020+8\u0006¢\u0006\u000f\n\u0006\b\u0094\u0001\u0010\u0093\u0001\u001a\u0005\b\u007f\u0010\u0095\u0001R\u001b\u0010/\u001a\u00020+8\u0006¢\u0006\u0010\n\u0006\b\u0096\u0001\u0010\u0093\u0001\u001a\u0006\b\u0097\u0001\u0010\u0095\u0001R\u001a\u00101\u001a\u0002008\u0006¢\u0006\u000f\n\u0005\b]\u0010\u0098\u0001\u001a\u0006\b\u0096\u0001\u0010\u0099\u0001R\u001a\u00103\u001a\u0002028\u0006¢\u0006\u000f\n\u0005\ba\u0010\u009a\u0001\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001R\u001b\u00105\u001a\u0002048\u0006¢\u0006\u0010\n\u0006\b\u008e\u0001\u0010\u009d\u0001\u001a\u0006\b\u009e\u0001\u0010\u009f\u0001R\u001b\u00107\u001a\u0002068\u0006¢\u0006\u0010\n\u0006\b\u0092\u0001\u0010 \u0001\u001a\u0006\b¡\u0001\u0010¢\u0001R\u001b\u00108\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\u000e\n\u0005\b¡\u0001\u0010`\u001a\u0005\b£\u0001\u0010bR\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u0018\u0010<\u001a\u0004\u0018\u00010;8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b£\u0001\u0010¦\u0001R\u0017\u0010=\u001a\u0004\u0018\u0001098\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bq\u0010¥\u0001R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008b\u0001\u0010¦\u0001R\u0018\u0010?\u001a\u0004\u0018\u0001098\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009e\u0001\u0010¥\u0001R\u0018\u0010@\u001a\u0004\u0018\u00010;8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009b\u0001\u0010¦\u0001R\u001b\u0010B\u001a\u00020A8\u0006¢\u0006\u0010\n\u0006\b\u0084\u0001\u0010§\u0001\u001a\u0006\b\u0089\u0001\u0010¨\u0001R\u001a\u0010D\u001a\u00020C8\u0006¢\u0006\u000f\n\u0005\bY\u0010©\u0001\u001a\u0006\b\u0086\u0001\u0010ª\u0001R\u0016\u0010¬\u0001\u001a\u0004\u0018\u00010;8F¢\u0006\b\u001a\u0006\b¤\u0001\u0010«\u0001R\u0016\u0010\u00ad\u0001\u001a\u0004\u0018\u00010;8F¢\u0006\b\u001a\u0006\b\u008c\u0001\u0010«\u0001R\u0016\u0010®\u0001\u001a\u0004\u0018\u00010;8F¢\u0006\b\u001a\u0006\b\u0090\u0001\u0010«\u0001¨\u0006±\u0001"}, d2 = {"Lcoil/request/ImageRequest;", "", "Landroid/content/Context;", "context", "data", "Lcoil/target/Target;", TypedValues.AttributesType.S_TARGET, "Lcoil/request/ImageRequest$Listener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcoil/memory/MemoryCache$Key;", "memoryCacheKey", "", "diskCacheKey", "Landroid/graphics/Bitmap$Config;", "bitmapConfig", "Landroid/graphics/ColorSpace;", "colorSpace", "Lcoil/size/Precision;", "precision", "Lkotlin/Pair;", "Lcoil/fetch/Fetcher$Factory;", "Ljava/lang/Class;", "fetcherFactory", "Lcoil/decode/Decoder$Factory;", "decoderFactory", "", "Lcoil/transform/Transformation;", "transformations", "Lcoil/transition/Transition$Factory;", "transitionFactory", "Lokhttp3/Headers;", "headers", "Lcoil/request/Tags;", "tags", "", "allowConversionToBitmap", "allowHardware", "allowRgb565", "premultipliedAlpha", "Lcoil/request/CachePolicy;", "memoryCachePolicy", "diskCachePolicy", "networkCachePolicy", "Lkotlinx/coroutines/CoroutineDispatcher;", "interceptorDispatcher", "fetcherDispatcher", "decoderDispatcher", "transformationDispatcher", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Lcoil/size/SizeResolver;", "sizeResolver", "Lcoil/size/Scale;", "scale", "Lcoil/request/Parameters;", "parameters", "placeholderMemoryCacheKey", "", "placeholderResId", "Landroid/graphics/drawable/Drawable;", "placeholderDrawable", "errorResId", "errorDrawable", "fallbackResId", "fallbackDrawable", "Lcoil/request/DefinedRequestOptions;", "defined", "Lcoil/request/DefaultRequestOptions;", RemoteConfigComponent.DEFAULTS_FILE_NAME, "<init>", "(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Precision;Lkotlin/Pair;Lcoil/decode/Decoder$Factory;Ljava/util/List;Lcoil/transition/Transition$Factory;Lokhttp3/Headers;Lcoil/request/Tags;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lcoil/request/Parameters;Lcoil/memory/MemoryCache$Key;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;)V", "Lcoil/request/ImageRequest$Builder;", "Kkkkkkkkkkkkkkkk", "(Landroid/content/Context;)Lcoil/request/ImageRequest$Builder;", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwww", "()Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/target/Target;", "Kkkkkkkkkkkkkkkkkkkk", "()Lcoil/target/Target;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ImageRequest$Listener;", "Wwwwwwww", "()Lcoil/request/ImageRequest$Listener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/memory/MemoryCache$Key;", "Wwwwwww", "()Lcoil/memory/MemoryCache$Key;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap$Config;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Bitmap$Config;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/ColorSpace;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/ColorSpace;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/size/Precision;", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "()Lcoil/size/Precision;", "Lkotlin/Pair;", "Wwwwwwwwwwww", "()Lkotlin/Pair;", "Lcoil/decode/Decoder$Factory;", "Wwwwwwwwwwwwwwwwwwww", "()Lcoil/decode/Decoder$Factory;", "Ljava/util/List;", "Kkkkkkkkkkkkkkkkkk", "()Ljava/util/List;", "Lcoil/transition/Transition$Factory;", "Kkkkkkkkkkkkkkkkk", "()Lcoil/transition/Transition$Factory;", "Wwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "Wwwwwwwwwww", "()Lokhttp3/Headers;", "Lcoil/request/Tags;", "Kkkkkkkkkkkkkkkkkkkkk", "()Lcoil/request/Tags;", "Wwwwwwwwwwwwwwwwwww", "Z", "()Z", "Wwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwww", "Lcoil/request/CachePolicy;", "Wwwwww", "()Lcoil/request/CachePolicy;", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwww", "Wwwww", "Lkotlinx/coroutines/CoroutineDispatcher;", "Wwwwwwwwww", "()Lkotlinx/coroutines/CoroutineDispatcher;", "Wwwwwwwww", "Kkkkkkkkkkkkkkkkkkk", "Landroidx/lifecycle/Lifecycle;", "()Landroidx/lifecycle/Lifecycle;", "Lcoil/size/SizeResolver;", "Kkkkkkkkkkkkkkkkkkkkkk", "()Lcoil/size/SizeResolver;", "Lcoil/size/Scale;", "Kkkkkkkkkkkkkkkkkkkkkkk", "()Lcoil/size/Scale;", "Lcoil/request/Parameters;", "Wwww", "()Lcoil/request/Parameters;", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "Www", "Ljava/lang/Integer;", "Landroid/graphics/drawable/Drawable;", "Lcoil/request/DefinedRequestOptions;", "()Lcoil/request/DefinedRequestOptions;", "Lcoil/request/DefaultRequestOptions;", "()Lcoil/request/DefaultRequestOptions;", "()Landroid/graphics/drawable/Drawable;", "placeholder", "error", "fallback", "Builder", "Listener", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ImageRequest {
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final DefaultRequestOptions f2038Kkkkkkkkkkkkkkkkkkkk;
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final DefinedRequestOptions f2039Kkkkkkkkkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final Drawable f2040Kkkkkkkkkkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final Integer f2041Kkkkkkkkkkkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final Drawable f2042Kkkkkkkkkkkkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final Integer f2043Kkkkkkkkkkkkkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final Drawable f2044Kkkkkkkkkkkkkkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Www  reason: collision with root package name */
    public final Integer f2045Www;
    @Nullable

    /* renamed from: Wwww  reason: collision with root package name */
    public final MemoryCache.Key f2046Wwww;
    @NotNull

    /* renamed from: Wwwww  reason: collision with root package name */
    public final Parameters f2047Wwwww;
    @NotNull

    /* renamed from: Wwwwww  reason: collision with root package name */
    public final Scale f2048Wwwwww;
    @NotNull

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public final SizeResolver f2049Wwwwwww;
    @NotNull

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public final Lifecycle f2050Wwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2051Wwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2052Wwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2053Wwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2054Wwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2055Wwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2056Wwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2057Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2058Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2059Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2060Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2061Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Tags f2062Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Headers f2063Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Transition.Factory f2064Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Transformation> f2065Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Decoder.Factory f2066Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Pair<Fetcher.Factory<?>, Class<?>> f2067Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Precision f2068Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ColorSpace f2069Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap.Config f2070Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2071Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MemoryCache.Key f2072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Listener f2073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Target f2074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f2075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f2076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0007\u0010\u0006J\u001f\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0017¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\fH\u0017¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcoil/request/ImageRequest$Listener;", "", "Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ErrorResult;", "result", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/request/ErrorResult;)V", "Lcoil/request/SuccessResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/request/SuccessResult;)V", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Listener {

        /* compiled from: Proguard */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class DefaultImpls {
        }

        @MainThread
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull SuccessResult successResult);

        @MainThread
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull ErrorResult errorResult);

        @MainThread
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest);

        @MainThread
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest);
    }

    public /* synthetic */ ImageRequest(Context context, Object obj, Target target, Listener listener, MemoryCache.Key key, String str, Bitmap.Config config, ColorSpace colorSpace, Precision precision, Pair pair, Decoder.Factory factory, List list, Transition.Factory factory2, Headers headers, Tags tags, boolean z, boolean z2, boolean z3, boolean z4, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, CoroutineDispatcher coroutineDispatcher, CoroutineDispatcher coroutineDispatcher2, CoroutineDispatcher coroutineDispatcher3, CoroutineDispatcher coroutineDispatcher4, Lifecycle lifecycle, SizeResolver sizeResolver, Scale scale, Parameters parameters, MemoryCache.Key key2, Integer num, Drawable drawable, Integer num2, Drawable drawable2, Integer num3, Drawable drawable3, DefinedRequestOptions definedRequestOptions, DefaultRequestOptions defaultRequestOptions, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, obj, target, listener, key, str, config, colorSpace, precision, pair, factory, list, factory2, headers, tags, z, z2, z3, z4, cachePolicy, cachePolicy2, cachePolicy3, coroutineDispatcher, coroutineDispatcher2, coroutineDispatcher3, coroutineDispatcher4, lifecycle, sizeResolver, scale, parameters, key2, num, drawable, num2, drawable2, num3, drawable3, definedRequestOptions, defaultRequestOptions);
    }

    public static /* synthetic */ Builder Kkkkkkkkkkkkkkk(ImageRequest imageRequest, Context context, int i, Object obj) {
        if ((i & 1) != 0) {
            context = imageRequest.f2076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return imageRequest.Kkkkkkkkkkkkkkkk(context);
    }

    @JvmOverloads
    @NotNull
    public final Builder Kkkkkkkkkkkkkkkk(@NotNull Context context) {
        return new Builder(this, context);
    }

    @NotNull
    public final Transition.Factory Kkkkkkkkkkkkkkkkk() {
        return this.f2064Wwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<Transformation> Kkkkkkkkkkkkkkkkkk() {
        return this.f2065Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CoroutineDispatcher Kkkkkkkkkkkkkkkkkkk() {
        return this.f2051Wwwwwwwww;
    }

    @Nullable
    public final Target Kkkkkkkkkkkkkkkkkkkk() {
        return this.f2074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Tags Kkkkkkkkkkkkkkkkkkkkk() {
        return this.f2062Wwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final SizeResolver Kkkkkkkkkkkkkkkkkkkkkk() {
        return this.f2049Wwwwwww;
    }

    @NotNull
    public final Scale Kkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f2048Wwwwww;
    }

    public final boolean Kkkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f2058Wwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Precision Kkkkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f2068Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final MemoryCache.Key Kkkkkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f2046Wwww;
    }

    @Nullable
    public final Drawable Www() {
        return Requests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, this.f2044Kkkkkkkkkkkkkkkkkkkkkkkkkk, this.f2045Www, this.f2038Kkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwww());
    }

    @NotNull
    public final Parameters Wwww() {
        return this.f2047Wwwww;
    }

    @NotNull
    public final CachePolicy Wwwww() {
        return this.f2055Wwwwwwwwwwwww;
    }

    @NotNull
    public final CachePolicy Wwwwww() {
        return this.f2057Wwwwwwwwwwwwwww;
    }

    @Nullable
    public final MemoryCache.Key Wwwwwww() {
        return this.f2072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Listener Wwwwwwww() {
        return this.f2073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Lifecycle Wwwwwwwww() {
        return this.f2050Wwwwwwww;
    }

    @NotNull
    public final CoroutineDispatcher Wwwwwwwwww() {
        return this.f2054Wwwwwwwwwwww;
    }

    @NotNull
    public final Headers Wwwwwwwwwww() {
        return this.f2063Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Pair<Fetcher.Factory<?>, Class<?>> Wwwwwwwwwwww() {
        return this.f2067Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CoroutineDispatcher Wwwwwwwwwwwww() {
        return this.f2053Wwwwwwwwwww;
    }

    @Nullable
    public final Drawable Wwwwwwwwwwwwww() {
        return Requests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, this.f2040Kkkkkkkkkkkkkkkkkkkkkk, this.f2041Kkkkkkkkkkkkkkkkkkkkkkk, this.f2038Kkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Nullable
    public final Drawable Wwwwwwwwwwwwwww() {
        return Requests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, this.f2042Kkkkkkkkkkkkkkkkkkkkkkkk, this.f2043Kkkkkkkkkkkkkkkkkkkkkkkkk, this.f2038Kkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @NotNull
    public final CachePolicy Wwwwwwwwwwwwwwww() {
        return this.f2056Wwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwww() {
        return this.f2071Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final DefinedRequestOptions Wwwwwwwwwwwwwwwwww() {
        return this.f2039Kkkkkkkkkkkkkkkkkkkkk;
    }

    @NotNull
    public final DefaultRequestOptions Wwwwwwwwwwwwwwwwwww() {
        return this.f2038Kkkkkkkkkkkkkkkkkkkk;
    }

    @Nullable
    public final Decoder.Factory Wwwwwwwwwwwwwwwwwwww() {
        return this.f2066Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CoroutineDispatcher Wwwwwwwwwwwwwwwwwwwww() {
        return this.f2052Wwwwwwwwww;
    }

    @NotNull
    public final Object Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f2075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Context Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final ColorSpace Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2069Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Bitmap.Config Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2070Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2059Wwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2060Wwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2061Wwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ImageRequest) {
            ImageRequest imageRequest = (ImageRequest) obj;
            if (Intrinsics.areEqual(this.f2076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, imageRequest.f2076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, imageRequest.f2075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, imageRequest.f2074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, imageRequest.f2073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, imageRequest.f2072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2071Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, imageRequest.f2071Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f2070Wwwwwwwwwwwwwwwwwwwwwwwwwwww == imageRequest.f2070Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if ((Build.VERSION.SDK_INT < 26 || Intrinsics.areEqual(this.f2069Wwwwwwwwwwwwwwwwwwwwwwwwwww, imageRequest.f2069Wwwwwwwwwwwwwwwwwwwwwwwwwww)) && this.f2068Wwwwwwwwwwwwwwwwwwwwwwwwww == imageRequest.f2068Wwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f2067Wwwwwwwwwwwwwwwwwwwwwwwww, imageRequest.f2067Wwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2066Wwwwwwwwwwwwwwwwwwwwwwww, imageRequest.f2066Wwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2065Wwwwwwwwwwwwwwwwwwwwwww, imageRequest.f2065Wwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2064Wwwwwwwwwwwwwwwwwwwwww, imageRequest.f2064Wwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2063Wwwwwwwwwwwwwwwwwwwww, imageRequest.f2063Wwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2062Wwwwwwwwwwwwwwwwwwww, imageRequest.f2062Wwwwwwwwwwwwwwwwwwww) && this.f2061Wwwwwwwwwwwwwwwwwww == imageRequest.f2061Wwwwwwwwwwwwwwwwwww && this.f2060Wwwwwwwwwwwwwwwwww == imageRequest.f2060Wwwwwwwwwwwwwwwwww && this.f2059Wwwwwwwwwwwwwwwww == imageRequest.f2059Wwwwwwwwwwwwwwwww && this.f2058Wwwwwwwwwwwwwwww == imageRequest.f2058Wwwwwwwwwwwwwwww && this.f2057Wwwwwwwwwwwwwww == imageRequest.f2057Wwwwwwwwwwwwwww && this.f2056Wwwwwwwwwwwwww == imageRequest.f2056Wwwwwwwwwwwwww && this.f2055Wwwwwwwwwwwww == imageRequest.f2055Wwwwwwwwwwwww && Intrinsics.areEqual(this.f2054Wwwwwwwwwwww, imageRequest.f2054Wwwwwwwwwwww) && Intrinsics.areEqual(this.f2053Wwwwwwwwwww, imageRequest.f2053Wwwwwwwwwww) && Intrinsics.areEqual(this.f2052Wwwwwwwwww, imageRequest.f2052Wwwwwwwwww) && Intrinsics.areEqual(this.f2051Wwwwwwwww, imageRequest.f2051Wwwwwwwww) && Intrinsics.areEqual(this.f2046Wwww, imageRequest.f2046Wwww) && Intrinsics.areEqual(this.f2045Www, imageRequest.f2045Www) && Intrinsics.areEqual(this.f2044Kkkkkkkkkkkkkkkkkkkkkkkkkk, imageRequest.f2044Kkkkkkkkkkkkkkkkkkkkkkkkkk) && Intrinsics.areEqual(this.f2043Kkkkkkkkkkkkkkkkkkkkkkkkk, imageRequest.f2043Kkkkkkkkkkkkkkkkkkkkkkkkk) && Intrinsics.areEqual(this.f2042Kkkkkkkkkkkkkkkkkkkkkkkk, imageRequest.f2042Kkkkkkkkkkkkkkkkkkkkkkkk) && Intrinsics.areEqual(this.f2041Kkkkkkkkkkkkkkkkkkkkkkk, imageRequest.f2041Kkkkkkkkkkkkkkkkkkkkkkk) && Intrinsics.areEqual(this.f2040Kkkkkkkkkkkkkkkkkkkkkk, imageRequest.f2040Kkkkkkkkkkkkkkkkkkkkkk) && Intrinsics.areEqual(this.f2050Wwwwwwww, imageRequest.f2050Wwwwwwww) && Intrinsics.areEqual(this.f2049Wwwwwww, imageRequest.f2049Wwwwwww) && this.f2048Wwwwww == imageRequest.f2048Wwwwww && Intrinsics.areEqual(this.f2047Wwwww, imageRequest.f2047Wwwww) && Intrinsics.areEqual(this.f2039Kkkkkkkkkkkkkkkkkkkkk, imageRequest.f2039Kkkkkkkkkkkkkkkkkkkkk) && Intrinsics.areEqual(this.f2038Kkkkkkkkkkkkkkkkkkkk, imageRequest.f2038Kkkkkkkkkkkkkkkkkkkk)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int hashCode = ((this.f2076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f2075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31;
        Target target = this.f2074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i14 = 0;
        if (target != null) {
            i = target.hashCode();
        } else {
            i = 0;
        }
        int i15 = (hashCode + i) * 31;
        Listener listener = this.f2073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (listener != null) {
            i2 = listener.hashCode();
        } else {
            i2 = 0;
        }
        int i16 = (i15 + i2) * 31;
        MemoryCache.Key key = this.f2072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (key != null) {
            i3 = key.hashCode();
        } else {
            i3 = 0;
        }
        int i17 = (i16 + i3) * 31;
        String str = this.f2071Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            i4 = str.hashCode();
        } else {
            i4 = 0;
        }
        int hashCode2 = (((i17 + i4) * 31) + this.f2070Wwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31;
        ColorSpace colorSpace = this.f2069Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (colorSpace != null) {
            i5 = colorSpace.hashCode();
        } else {
            i5 = 0;
        }
        int hashCode3 = (((hashCode2 + i5) * 31) + this.f2068Wwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31;
        Pair<Fetcher.Factory<?>, Class<?>> pair = this.f2067Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (pair != null) {
            i6 = pair.hashCode();
        } else {
            i6 = 0;
        }
        int i18 = (hashCode3 + i6) * 31;
        Decoder.Factory factory = this.f2066Wwwwwwwwwwwwwwwwwwwwwwww;
        if (factory != null) {
            i7 = factory.hashCode();
        } else {
            i7 = 0;
        }
        int hashCode4 = (((((((((((((((((((((((((((((((((((((((i18 + i7) * 31) + this.f2065Wwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2064Wwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2063Wwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2062Wwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2061Wwwwwwwwwwwwwwwwwww)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2060Wwwwwwwwwwwwwwwwww)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2059Wwwwwwwwwwwwwwwww)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2058Wwwwwwwwwwwwwwww)) * 31) + this.f2057Wwwwwwwwwwwwwww.hashCode()) * 31) + this.f2056Wwwwwwwwwwwwww.hashCode()) * 31) + this.f2055Wwwwwwwwwwwww.hashCode()) * 31) + this.f2054Wwwwwwwwwwww.hashCode()) * 31) + this.f2053Wwwwwwwwwww.hashCode()) * 31) + this.f2052Wwwwwwwwww.hashCode()) * 31) + this.f2051Wwwwwwwww.hashCode()) * 31) + this.f2050Wwwwwwww.hashCode()) * 31) + this.f2049Wwwwwww.hashCode()) * 31) + this.f2048Wwwwww.hashCode()) * 31) + this.f2047Wwwww.hashCode()) * 31;
        MemoryCache.Key key2 = this.f2046Wwww;
        if (key2 != null) {
            i8 = key2.hashCode();
        } else {
            i8 = 0;
        }
        int i19 = (hashCode4 + i8) * 31;
        Integer num = this.f2045Www;
        if (num != null) {
            i9 = num.hashCode();
        } else {
            i9 = 0;
        }
        int i20 = (i19 + i9) * 31;
        Drawable drawable = this.f2044Kkkkkkkkkkkkkkkkkkkkkkkkkk;
        if (drawable != null) {
            i10 = drawable.hashCode();
        } else {
            i10 = 0;
        }
        int i21 = (i20 + i10) * 31;
        Integer num2 = this.f2043Kkkkkkkkkkkkkkkkkkkkkkkkk;
        if (num2 != null) {
            i11 = num2.hashCode();
        } else {
            i11 = 0;
        }
        int i22 = (i21 + i11) * 31;
        Drawable drawable2 = this.f2042Kkkkkkkkkkkkkkkkkkkkkkkk;
        if (drawable2 != null) {
            i12 = drawable2.hashCode();
        } else {
            i12 = 0;
        }
        int i23 = (i22 + i12) * 31;
        Integer num3 = this.f2041Kkkkkkkkkkkkkkkkkkkkkkk;
        if (num3 != null) {
            i13 = num3.hashCode();
        } else {
            i13 = 0;
        }
        int i24 = (i23 + i13) * 31;
        Drawable drawable3 = this.f2040Kkkkkkkkkkkkkkkkkkkkkk;
        if (drawable3 != null) {
            i14 = drawable3.hashCode();
        }
        return ((((i24 + i14) * 31) + this.f2039Kkkkkkkkkkkkkkkkkkkkk.hashCode()) * 31) + this.f2038Kkkkkkkkkkkkkkkkkkkk.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImageRequest(Context context, Object obj, Target target, Listener listener, MemoryCache.Key key, String str, Bitmap.Config config, ColorSpace colorSpace, Precision precision, Pair<? extends Fetcher.Factory<?>, ? extends Class<?>> pair, Decoder.Factory factory, List<? extends Transformation> list, Transition.Factory factory2, Headers headers, Tags tags, boolean z, boolean z2, boolean z3, boolean z4, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, CoroutineDispatcher coroutineDispatcher, CoroutineDispatcher coroutineDispatcher2, CoroutineDispatcher coroutineDispatcher3, CoroutineDispatcher coroutineDispatcher4, Lifecycle lifecycle, SizeResolver sizeResolver, Scale scale, Parameters parameters, MemoryCache.Key key2, Integer num, Drawable drawable, Integer num2, Drawable drawable2, Integer num3, Drawable drawable3, DefinedRequestOptions definedRequestOptions, DefaultRequestOptions defaultRequestOptions) {
        this.f2076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f2075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        this.f2074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = target;
        this.f2073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = listener;
        this.f2072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = key;
        this.f2071Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f2070Wwwwwwwwwwwwwwwwwwwwwwwwwwww = config;
        this.f2069Wwwwwwwwwwwwwwwwwwwwwwwwwww = colorSpace;
        this.f2068Wwwwwwwwwwwwwwwwwwwwwwwwww = precision;
        this.f2067Wwwwwwwwwwwwwwwwwwwwwwwww = pair;
        this.f2066Wwwwwwwwwwwwwwwwwwwwwwww = factory;
        this.f2065Wwwwwwwwwwwwwwwwwwwwwww = list;
        this.f2064Wwwwwwwwwwwwwwwwwwwwww = factory2;
        this.f2063Wwwwwwwwwwwwwwwwwwwww = headers;
        this.f2062Wwwwwwwwwwwwwwwwwwww = tags;
        this.f2061Wwwwwwwwwwwwwwwwwww = z;
        this.f2060Wwwwwwwwwwwwwwwwww = z2;
        this.f2059Wwwwwwwwwwwwwwwww = z3;
        this.f2058Wwwwwwwwwwwwwwww = z4;
        this.f2057Wwwwwwwwwwwwwww = cachePolicy;
        this.f2056Wwwwwwwwwwwwww = cachePolicy2;
        this.f2055Wwwwwwwwwwwww = cachePolicy3;
        this.f2054Wwwwwwwwwwww = coroutineDispatcher;
        this.f2053Wwwwwwwwwww = coroutineDispatcher2;
        this.f2052Wwwwwwwwww = coroutineDispatcher3;
        this.f2051Wwwwwwwww = coroutineDispatcher4;
        this.f2050Wwwwwwww = lifecycle;
        this.f2049Wwwwwww = sizeResolver;
        this.f2048Wwwwww = scale;
        this.f2047Wwwww = parameters;
        this.f2046Wwww = key2;
        this.f2045Www = num;
        this.f2044Kkkkkkkkkkkkkkkkkkkkkkkkkk = drawable;
        this.f2043Kkkkkkkkkkkkkkkkkkkkkkkkk = num2;
        this.f2042Kkkkkkkkkkkkkkkkkkkkkkkk = drawable2;
        this.f2041Kkkkkkkkkkkkkkkkkkkkkkk = num3;
        this.f2040Kkkkkkkkkkkkkkkkkkkkkk = drawable3;
        this.f2039Kkkkkkkkkkkkkkkkkkkkk = definedRequestOptions;
        this.f2038Kkkkkkkkkkkkkkkkkkkk = defaultRequestOptions;
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001b\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\u00002\b\b\u0001\u0010\u001a\u001a\u00020\u00192\b\b\u0001\u0010\u001b\u001a\u00020\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0010¢\u0006\u0004\b#\u0010$J\u0015\u0010'\u001a\u00020\u00002\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J\u0015\u0010+\u001a\u00020\u00002\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,J\u0015\u0010/\u001a\u00020\u00002\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\u0006¢\u0006\u0004\b1\u00102R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u00103R\u0016\u0010.\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00104R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u00105R\u0018\u00108\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00107R\u0018\u0010;\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010:R\u0018\u0010>\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010FR\u0018\u0010J\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010IR,\u0010O\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030L\u0012\b\u0012\u0006\u0012\u0002\b\u00030M\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010NR\u0018\u0010R\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010QR\u001c\u0010V\u001a\b\u0012\u0004\u0012\u00020T0S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010UR\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0018\u0010^\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R(\u0010b\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030M\u0012\u0004\u0012\u00020\u0001\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010e\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010h\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010gR\u0016\u0010l\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010dR\u0018\u0010o\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010q\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010nR\u0018\u0010s\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010nR\u0018\u0010w\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010vR\u0018\u0010y\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010vR\u0018\u0010{\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010vR\u0018\u0010}\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010vR\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u001a\u0010\u0083\u0001\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010=R\u001b\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001c\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u0085\u0001R\u001c\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u0089\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0085\u0001R\u001c\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0089\u0001R\u001b\u0010\u0095\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001b\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001b\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u001b\u0010\u009d\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u0094\u0001R\u001b\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u0097\u0001R\u001b\u0010¡\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010\u009a\u0001¨\u0006¢\u0001"}, d2 = {"Lcoil/request/ImageRequest$Builder;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "(Lcoil/request/ImageRequest;Landroid/content/Context;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/lifecycle/Lifecycle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroidx/lifecycle/Lifecycle;", "Lcoil/size/SizeResolver;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/size/SizeResolver;", "Lcoil/size/Scale;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/size/Scale;", "data", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;", "", "width", "height", "Wwwwwwwwwwwwwwwwwwwwwwww", "(II)Lcoil/request/ImageRequest$Builder;", "Lcoil/size/Size;", "size", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/size/Size;)Lcoil/request/ImageRequest$Builder;", "resolver", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcoil/size/SizeResolver;)Lcoil/request/ImageRequest$Builder;", "", "enable", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)Lcoil/request/ImageRequest$Builder;", "Lcoil/request/CachePolicy;", "policy", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;", "Lcoil/request/DefaultRequestOptions;", RemoteConfigComponent.DEFAULTS_FILE_NAME, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/DefaultRequestOptions;)Lcoil/request/ImageRequest$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/request/ImageRequest;", "Landroid/content/Context;", "Lcoil/request/DefaultRequestOptions;", "Ljava/lang/Object;", "Lcoil/target/Target;", "Lcoil/target/Target;", TypedValues.AttributesType.S_TARGET, "Lcoil/request/ImageRequest$Listener;", "Lcoil/request/ImageRequest$Listener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcoil/memory/MemoryCache$Key;", "Lcoil/memory/MemoryCache$Key;", "memoryCacheKey", "", "Ljava/lang/String;", "diskCacheKey", "Landroid/graphics/Bitmap$Config;", "Landroid/graphics/Bitmap$Config;", "bitmapConfig", "Landroid/graphics/ColorSpace;", "Landroid/graphics/ColorSpace;", "colorSpace", "Lcoil/size/Precision;", "Lcoil/size/Precision;", "precision", "Lkotlin/Pair;", "Lcoil/fetch/Fetcher$Factory;", "Ljava/lang/Class;", "Lkotlin/Pair;", "fetcherFactory", "Lcoil/decode/Decoder$Factory;", "Lcoil/decode/Decoder$Factory;", "decoderFactory", "", "Lcoil/transform/Transformation;", "Ljava/util/List;", "transformations", "Lcoil/transition/Transition$Factory;", "Wwwwwwwwwwwwwwwwwwwww", "Lcoil/transition/Transition$Factory;", "transitionFactory", "Lokhttp3/Headers$Builder;", "Wwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers$Builder;", "headers", "", "Wwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "tags", "Wwwwwwwwwwwwwwwwww", "Z", "allowConversionToBitmap", "Wwwwwwwwwwwwwwwww", "Ljava/lang/Boolean;", "allowHardware", "Wwwwwwwwwwwwwwww", "allowRgb565", "Wwwwwwwwwwwwwww", "premultipliedAlpha", "Wwwwwwwwwwwwww", "Lcoil/request/CachePolicy;", "memoryCachePolicy", "Wwwwwwwwwwwww", "diskCachePolicy", "Wwwwwwwwwwww", "networkCachePolicy", "Lkotlinx/coroutines/CoroutineDispatcher;", "Wwwwwwwwwww", "Lkotlinx/coroutines/CoroutineDispatcher;", "interceptorDispatcher", "Wwwwwwwwww", "fetcherDispatcher", "Wwwwwwwww", "decoderDispatcher", "Wwwwwwww", "transformationDispatcher", "Lcoil/request/Parameters$Builder;", "Wwwwwww", "Lcoil/request/Parameters$Builder;", "parameters", "Wwwwww", "placeholderMemoryCacheKey", "Wwwww", "Ljava/lang/Integer;", "placeholderResId", "Landroid/graphics/drawable/Drawable;", "Wwww", "Landroid/graphics/drawable/Drawable;", "placeholderDrawable", "Www", "errorResId", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "errorDrawable", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "fallbackResId", "Kkkkkkkkkkkkkkkkkkkkkkkk", "fallbackDrawable", "Kkkkkkkkkkkkkkkkkkkkkkk", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Kkkkkkkkkkkkkkkkkkkkkk", "Lcoil/size/SizeResolver;", "sizeResolver", "Kkkkkkkkkkkkkkkkkkkkk", "Lcoil/size/Scale;", "scale", "Kkkkkkkkkkkkkkkkkkkk", "resolvedLifecycle", "Kkkkkkkkkkkkkkkkkkk", "resolvedSizeResolver", "Kkkkkkkkkkkkkkkkkk", "resolvedScale", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Builder {
        @Nullable

        /* renamed from: Kkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public Scale f2077Kkkkkkkkkkkkkkkkkk;
        @Nullable

        /* renamed from: Kkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public SizeResolver f2078Kkkkkkkkkkkkkkkkkkk;
        @Nullable

        /* renamed from: Kkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public Lifecycle f2079Kkkkkkkkkkkkkkkkkkkk;
        @Nullable

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public Scale f2080Kkkkkkkkkkkkkkkkkkkkk;
        @Nullable

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public SizeResolver f2081Kkkkkkkkkkkkkkkkkkkkkk;
        @Nullable

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public Lifecycle f2082Kkkkkkkkkkkkkkkkkkkkkkk;
        @Nullable

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public Drawable f2083Kkkkkkkkkkkkkkkkkkkkkkkk;
        @DrawableRes
        @Nullable

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public Integer f2084Kkkkkkkkkkkkkkkkkkkkkkkkk;
        @Nullable

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public Drawable f2085Kkkkkkkkkkkkkkkkkkkkkkkkkk;
        @DrawableRes
        @Nullable

        /* renamed from: Www  reason: collision with root package name */
        public Integer f2086Www;
        @Nullable

        /* renamed from: Wwww  reason: collision with root package name */
        public Drawable f2087Wwww;
        @DrawableRes
        @Nullable

        /* renamed from: Wwwww  reason: collision with root package name */
        public Integer f2088Wwwww;
        @Nullable

        /* renamed from: Wwwwww  reason: collision with root package name */
        public MemoryCache.Key f2089Wwwwww;
        @Nullable

        /* renamed from: Wwwwwww  reason: collision with root package name */
        public Parameters.Builder f2090Wwwwwww;
        @Nullable

        /* renamed from: Wwwwwwww  reason: collision with root package name */
        public CoroutineDispatcher f2091Wwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwww  reason: collision with root package name */
        public CoroutineDispatcher f2092Wwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwww  reason: collision with root package name */
        public CoroutineDispatcher f2093Wwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
        public CoroutineDispatcher f2094Wwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
        public CachePolicy f2095Wwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
        public CachePolicy f2096Wwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
        public CachePolicy f2097Wwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f2098Wwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
        public Boolean f2099Wwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Boolean f2100Wwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f2101Wwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Map<Class<?>, Object> f2102Wwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Headers.Builder f2103Wwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Transition.Factory f2104Wwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<? extends Transformation> f2105Wwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Decoder.Factory f2106Wwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Pair<? extends Fetcher.Factory<?>, ? extends Class<?>> f2107Wwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Precision f2108Wwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ColorSpace f2109Wwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bitmap.Config f2110Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f2111Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MemoryCache.Key f2112Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Listener f2113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Target f2114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f2115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DefaultRequestOptions f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f2117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder(@NotNull Context context) {
            this.f2117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
            this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Requests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f2114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f2113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f2112Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f2111Wwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f2110Wwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            if (Build.VERSION.SDK_INT >= 26) {
                this.f2109Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
            }
            this.f2108Wwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f2107Wwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f2106Wwwwwwwwwwwwwwwwwwwwwww = null;
            this.f2105Wwwwwwwwwwwwwwwwwwwwww = CollectionsKt.emptyList();
            this.f2104Wwwwwwwwwwwwwwwwwwwww = null;
            this.f2103Wwwwwwwwwwwwwwwwwwww = null;
            this.f2102Wwwwwwwwwwwwwwwwwww = null;
            this.f2101Wwwwwwwwwwwwwwwwww = true;
            this.f2100Wwwwwwwwwwwwwwwww = null;
            this.f2099Wwwwwwwwwwwwwwww = null;
            this.f2098Wwwwwwwwwwwwwww = true;
            this.f2097Wwwwwwwwwwwwww = null;
            this.f2096Wwwwwwwwwwwww = null;
            this.f2095Wwwwwwwwwwww = null;
            this.f2094Wwwwwwwwwww = null;
            this.f2093Wwwwwwwwww = null;
            this.f2092Wwwwwwwww = null;
            this.f2091Wwwwwwww = null;
            this.f2090Wwwwwww = null;
            this.f2089Wwwwww = null;
            this.f2088Wwwww = null;
            this.f2087Wwww = null;
            this.f2086Www = null;
            this.f2085Kkkkkkkkkkkkkkkkkkkkkkkkkk = null;
            this.f2084Kkkkkkkkkkkkkkkkkkkkkkkkk = null;
            this.f2083Kkkkkkkkkkkkkkkkkkkkkkkk = null;
            this.f2082Kkkkkkkkkkkkkkkkkkkkkkk = null;
            this.f2081Kkkkkkkkkkkkkkkkkkkkkk = null;
            this.f2080Kkkkkkkkkkkkkkkkkkkkk = null;
            this.f2079Kkkkkkkkkkkkkkkkkkkk = null;
            this.f2078Kkkkkkkkkkkkkkkkkkk = null;
            this.f2077Kkkkkkkkkkkkkkkkkk = null;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwww(@NotNull SizeResolver sizeResolver) {
            this.f2081Kkkkkkkkkkkkkkkkkkkkkk = sizeResolver;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Size size) {
            return Wwwwwwwwwwwwwwwwwwwwww(SizeResolvers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(size));
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwww(@Px int i, @Px int i2) {
            return Wwwwwwwwwwwwwwwwwwwwwww(Sizes.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2));
        }

        public final SizeResolver Wwwwwwwwwwwwwwwwwwwwwwwww() {
            ImageView.ScaleType scaleType;
            Target target = this.f2114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (target instanceof ViewTarget) {
                View view = ((ViewTarget) target).getView();
                if ((view instanceof ImageView) && ((scaleType = ((ImageView) view).getScaleType()) == ImageView.ScaleType.CENTER || scaleType == ImageView.ScaleType.MATRIX)) {
                    return SizeResolvers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Size.f2175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
                return ViewSizeResolvers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, false, 2, null);
            }
            return new DisplaySizeResolver(this.f2117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public final Scale Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            ViewSizeResolver viewSizeResolver;
            ViewTarget viewTarget;
            View view;
            SizeResolver sizeResolver = this.f2081Kkkkkkkkkkkkkkkkkkkkkk;
            View view2 = null;
            if (sizeResolver instanceof ViewSizeResolver) {
                viewSizeResolver = (ViewSizeResolver) sizeResolver;
            } else {
                viewSizeResolver = null;
            }
            if (viewSizeResolver != null && (view = viewSizeResolver.getView()) != null) {
                view2 = view;
            } else {
                Target target = this.f2114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (target instanceof ViewTarget) {
                    viewTarget = (ViewTarget) target;
                } else {
                    viewTarget = null;
                }
                if (viewTarget != null) {
                    view2 = viewTarget.getView();
                }
            }
            if (view2 instanceof ImageView) {
                return Utils.Wwwwwwwwwwwwwwwwwwww((ImageView) view2);
            }
            return Scale.FIT;
        }

        public final Lifecycle Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Context context;
            Target target = this.f2114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (target instanceof ViewTarget) {
                context = ((ViewTarget) target).getView().getContext();
            } else {
                context = this.f2117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            Lifecycle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Contexts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return GlobalLifecycle.INSTANCE;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f2079Kkkkkkkkkkkkkkkkkkkk = null;
            this.f2078Kkkkkkkkkkkkkkkkkkk = null;
            this.f2077Kkkkkkkkkkkkkkkkkk = null;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f2077Kkkkkkkkkkkkkkkkkk = null;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull CachePolicy cachePolicy) {
            this.f2097Wwwwwwwwwwwwww = cachePolicy;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull DefaultRequestOptions defaultRequestOptions) {
            this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = defaultRequestOptions;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Object obj) {
            this.f2115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
            return this;
        }

        @NotNull
        public final ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Headers headers;
            Tags tags;
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Parameters parameters;
            Context context = this.f2117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Object obj = this.f2115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (obj == null) {
                obj = NullRequestData.INSTANCE;
            }
            Object obj2 = obj;
            Target target = this.f2114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Listener listener = this.f2113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            MemoryCache.Key key = this.f2112Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str = this.f2111Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Bitmap.Config config = this.f2110Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (config == null) {
                config = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Bitmap.Config config2 = config;
            ColorSpace colorSpace = this.f2109Wwwwwwwwwwwwwwwwwwwwwwwwww;
            Precision precision = this.f2108Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (precision == null) {
                precision = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww();
            }
            Precision precision2 = precision;
            Pair<? extends Fetcher.Factory<?>, ? extends Class<?>> pair = this.f2107Wwwwwwwwwwwwwwwwwwwwwwww;
            Decoder.Factory factory = this.f2106Wwwwwwwwwwwwwwwwwwwwwww;
            List<? extends Transformation> list = this.f2105Wwwwwwwwwwwwwwwwwwwwww;
            Transition.Factory factory2 = this.f2104Wwwwwwwwwwwwwwwwwwwww;
            if (factory2 == null) {
                factory2 = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
            }
            Transition.Factory factory3 = factory2;
            Headers.Builder builder = this.f2103Wwwwwwwwwwwwwwwwwwww;
            if (builder != null) {
                headers = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                headers = null;
            }
            Headers Wwwwwwwwww2 = Utils.Wwwwwwwwww(headers);
            Map<Class<?>, ? extends Object> map = this.f2102Wwwwwwwwwwwwwwwwwww;
            if (map != null) {
                tags = Tags.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map);
            } else {
                tags = null;
            }
            Tags Wwwwwwwwwww2 = Utils.Wwwwwwwwwww(tags);
            boolean z = this.f2101Wwwwwwwwwwwwwwwwww;
            Boolean bool = this.f2100Wwwwwwwwwwwwwwwww;
            if (bool != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = bool.booleanValue();
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            boolean z2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Boolean bool2 = this.f2099Wwwwwwwwwwwwwwww;
            if (bool2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = bool2.booleanValue();
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            boolean z3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            boolean z4 = this.f2098Wwwwwwwwwwwwwww;
            CachePolicy cachePolicy = this.f2097Wwwwwwwwwwwwww;
            if (cachePolicy == null) {
                cachePolicy = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
            }
            CachePolicy cachePolicy2 = cachePolicy;
            CachePolicy cachePolicy3 = this.f2096Wwwwwwwwwwwww;
            if (cachePolicy3 == null) {
                cachePolicy3 = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            CachePolicy cachePolicy4 = cachePolicy3;
            CachePolicy cachePolicy5 = this.f2095Wwwwwwwwwwww;
            if (cachePolicy5 == null) {
                cachePolicy5 = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww();
            }
            CachePolicy cachePolicy6 = cachePolicy5;
            CoroutineDispatcher coroutineDispatcher = this.f2094Wwwwwwwwwww;
            if (coroutineDispatcher == null) {
                coroutineDispatcher = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            CoroutineDispatcher coroutineDispatcher2 = coroutineDispatcher;
            CoroutineDispatcher coroutineDispatcher3 = this.f2093Wwwwwwwwww;
            if (coroutineDispatcher3 == null) {
                coroutineDispatcher3 = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            CoroutineDispatcher coroutineDispatcher4 = coroutineDispatcher3;
            CoroutineDispatcher coroutineDispatcher5 = this.f2092Wwwwwwwww;
            if (coroutineDispatcher5 == null) {
                coroutineDispatcher5 = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            CoroutineDispatcher coroutineDispatcher6 = coroutineDispatcher5;
            CoroutineDispatcher coroutineDispatcher7 = this.f2091Wwwwwwww;
            if (coroutineDispatcher7 == null) {
                coroutineDispatcher7 = this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww();
            }
            CoroutineDispatcher coroutineDispatcher8 = coroutineDispatcher7;
            Lifecycle lifecycle = this.f2082Kkkkkkkkkkkkkkkkkkkkkkk;
            if (lifecycle == null && (lifecycle = this.f2079Kkkkkkkkkkkkkkkkkkkk) == null) {
                lifecycle = Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Lifecycle lifecycle2 = lifecycle;
            SizeResolver sizeResolver = this.f2081Kkkkkkkkkkkkkkkkkkkkkk;
            if (sizeResolver == null && (sizeResolver = this.f2078Kkkkkkkkkkkkkkkkkkk) == null) {
                sizeResolver = Wwwwwwwwwwwwwwwwwwwwwwwww();
            }
            SizeResolver sizeResolver2 = sizeResolver;
            Scale scale = this.f2080Kkkkkkkkkkkkkkkkkkkkk;
            if (scale == null && (scale = this.f2077Kkkkkkkkkkkkkkkkkk) == null) {
                scale = Wwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Scale scale2 = scale;
            Parameters.Builder builder2 = this.f2090Wwwwwww;
            if (builder2 != null) {
                parameters = builder2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                parameters = null;
            }
            return new ImageRequest(context, obj2, target, listener, key, str, config2, colorSpace, precision2, pair, factory, list, factory3, Wwwwwwwwww2, Wwwwwwwwwww2, z, z2, z3, z4, cachePolicy2, cachePolicy4, cachePolicy6, coroutineDispatcher2, coroutineDispatcher4, coroutineDispatcher6, coroutineDispatcher8, lifecycle2, sizeResolver2, scale2, Utils.Wwwwwwwwwwww(parameters), this.f2089Wwwwww, this.f2088Wwwww, this.f2087Wwww, this.f2086Www, this.f2085Kkkkkkkkkkkkkkkkkkkkkkkkkk, this.f2084Kkkkkkkkkkkkkkkkkkkkkkkkk, this.f2083Kkkkkkkkkkkkkkkkkkkkkkkk, new DefinedRequestOptions(this.f2082Kkkkkkkkkkkkkkkkkkkkkkk, this.f2081Kkkkkkkkkkkkkkkkkkkkkk, this.f2080Kkkkkkkkkkkkkkkkkkkkk, this.f2094Wwwwwwwwwww, this.f2093Wwwwwwwwww, this.f2092Wwwwwwwww, this.f2091Wwwwwwww, this.f2104Wwwwwwwwwwwwwwwwwwwww, this.f2108Wwwwwwwwwwwwwwwwwwwwwwwww, this.f2110Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2100Wwwwwwwwwwwwwwwww, this.f2099Wwwwwwwwwwwwwwww, this.f2097Wwwwwwwwwwwwww, this.f2096Wwwwwwwwwwwww, this.f2095Wwwwwwwwwwww), this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f2100Wwwwwwwwwwwwwwwww = Boolean.valueOf(z);
            return this;
        }

        @JvmOverloads
        public Builder(@NotNull ImageRequest imageRequest, @NotNull Context context) {
            this.f2117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
            this.f2116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwwww();
            this.f2115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwwwwwww();
            this.f2114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest.Kkkkkkkkkkkkkkkkkkkk();
            this.f2113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwww();
            this.f2112Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwww();
            this.f2111Wwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwww();
            this.f2110Wwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Build.VERSION.SDK_INT >= 26) {
                this.f2109Wwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwwwwwwwww();
            }
            this.f2108Wwwwwwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww();
            this.f2107Wwwwwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwww();
            this.f2106Wwwwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwwwww();
            this.f2105Wwwwwwwwwwwwwwwwwwwwww = imageRequest.Kkkkkkkkkkkkkkkkkk();
            this.f2104Wwwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww();
            this.f2103Wwwwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2102Wwwwwwwwwwwwwwwwwww = MapsKt.toMutableMap(imageRequest.Kkkkkkkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f2101Wwwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2100Wwwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2099Wwwwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2098Wwwwwwwwwwwwwww = imageRequest.Kkkkkkkkkkkkkkkkkkkkkkkk();
            this.f2097Wwwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2096Wwwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2095Wwwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2094Wwwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2093Wwwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2092Wwwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2091Wwwwwwww = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww();
            this.f2090Wwwwwww = imageRequest.Wwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2089Wwwwww = imageRequest.Kkkkkkkkkkkkkkkkkkkkkkkkkk();
            this.f2088Wwwww = imageRequest.f2045Www;
            this.f2087Wwww = imageRequest.f2044Kkkkkkkkkkkkkkkkkkkkkkkkkk;
            this.f2086Www = imageRequest.f2043Kkkkkkkkkkkkkkkkkkkkkkkkk;
            this.f2085Kkkkkkkkkkkkkkkkkkkkkkkkkk = imageRequest.f2042Kkkkkkkkkkkkkkkkkkkkkkkk;
            this.f2084Kkkkkkkkkkkkkkkkkkkkkkkkk = imageRequest.f2041Kkkkkkkkkkkkkkkkkkkkkkk;
            this.f2083Kkkkkkkkkkkkkkkkkkkkkkkk = imageRequest.f2040Kkkkkkkkkkkkkkkkkkkkkk;
            this.f2082Kkkkkkkkkkkkkkkkkkkkkkk = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2081Kkkkkkkkkkkkkkkkkkkkkk = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww();
            this.f2080Kkkkkkkkkkkkkkkkkkkkk = imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww();
            if (imageRequest.Wwwwwwwwwwwwwwwwwwwwwww() == context) {
                this.f2079Kkkkkkkkkkkkkkkkkkkk = imageRequest.Wwwwwwwww();
                this.f2078Kkkkkkkkkkkkkkkkkkk = imageRequest.Kkkkkkkkkkkkkkkkkkkkkk();
                this.f2077Kkkkkkkkkkkkkkkkkk = imageRequest.Kkkkkkkkkkkkkkkkkkkkkkk();
                return;
            }
            this.f2079Kkkkkkkkkkkkkkkkkkkk = null;
            this.f2078Kkkkkkkkkkkkkkkkkkk = null;
            this.f2077Kkkkkkkkkkkkkkkkkk = null;
        }
    }
}
