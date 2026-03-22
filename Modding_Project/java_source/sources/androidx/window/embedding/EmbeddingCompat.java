package androidx.window.embedding;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.IBinder;
import androidx.window.RequiresWindowSdkExtension;
import androidx.window.WindowSdkExtensions;
import androidx.window.core.BuildConfig;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.core.VerificationMode;
import androidx.window.embedding.EmbeddingCompat;
import androidx.window.embedding.EmbeddingInterfaceCompat;
import androidx.window.embedding.SplitController;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.embedding.ActivityEmbeddingComponent;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 '2\u00020\u0001:\u0001'B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0017J\b\u0010\r\u001a\u00020\fH\u0017J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0017J\u0016\u0010\u001a\u001a\u00020\f2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016J\u001c\u0010\u001e\u001a\u00020\f2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 H\u0017J\u0018\u0010#\u001a\u00020\f2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\"H\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Landroidx/window/embedding/EmbeddingCompat;", "Landroidx/window/embedding/EmbeddingInterfaceCompat;", "embeddingExtension", "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;", "adapter", "Landroidx/window/embedding/EmbeddingAdapter;", "consumerAdapter", "Landroidx/window/core/ConsumerAdapter;", "applicationContext", "Landroid/content/Context;", "(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/ConsumerAdapter;Landroid/content/Context;)V", "clearSplitAttributesCalculator", "", "invalidateTopVisibleSplitAttributes", "isActivityEmbedded", "", "activity", "Landroid/app/Activity;", "setEmbeddingCallback", "embeddingCallback", "Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;", "setLaunchingActivityStack", "Landroid/app/ActivityOptions;", "options", BidResponsed.KEY_TOKEN, "Landroid/os/IBinder;", "setRules", "rules", "", "Landroidx/window/embedding/EmbeddingRule;", "setSplitAttributesCalculator", "calculator", "Lkotlin/Function1;", "Landroidx/window/embedding/SplitAttributesCalculatorParams;", "Landroidx/window/embedding/SplitAttributes;", "updateSplitAttributes", "splitInfo", "Landroidx/window/embedding/SplitInfo;", "splitAttributes", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class EmbeddingCompat implements EmbeddingInterfaceCompat {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final boolean DEBUG = true;
    @NotNull
    private static final String TAG = "EmbeddingCompat";
    @NotNull
    private final EmbeddingAdapter adapter;
    @NotNull
    private final Context applicationContext;
    @NotNull
    private final ConsumerAdapter consumerAdapter;
    @NotNull
    private final ActivityEmbeddingComponent embeddingExtension;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\b\u0010\t\u001a\u00020\bH\u0002J\u0006\u0010\n\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Landroidx/window/embedding/EmbeddingCompat$Companion;", "", "()V", "DEBUG", "", "TAG", "", "embeddingComponent", "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;", "emptyActivityEmbeddingProxy", "isEmbeddingAvailable", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final ActivityEmbeddingComponent emptyActivityEmbeddingProxy() {
            return (ActivityEmbeddingComponent) Proxy.newProxyInstance(EmbeddingCompat.class.getClassLoader(), new Class[]{ActivityEmbeddingComponent.class}, new InvocationHandler() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    Unit emptyActivityEmbeddingProxy$lambda$2;
                    emptyActivityEmbeddingProxy$lambda$2 = EmbeddingCompat.Companion.emptyActivityEmbeddingProxy$lambda$2(obj, method, objArr);
                    return emptyActivityEmbeddingProxy$lambda$2;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit emptyActivityEmbeddingProxy$lambda$2(Object obj, Method method, Object[] objArr) {
            return Unit.INSTANCE;
        }

        @NotNull
        public final ActivityEmbeddingComponent embeddingComponent() {
            ActivityEmbeddingComponent activityEmbeddingComponent;
            if (isEmbeddingAvailable()) {
                ClassLoader classLoader = EmbeddingCompat.class.getClassLoader();
                if (classLoader != null && (activityEmbeddingComponent = new SafeActivityEmbeddingComponentProvider(classLoader, new ConsumerAdapter(classLoader), WindowExtensionsProvider.getWindowExtensions()).getActivityEmbeddingComponent()) != null) {
                    return activityEmbeddingComponent;
                }
                return emptyActivityEmbeddingProxy();
            }
            return emptyActivityEmbeddingProxy();
        }

        public final boolean isEmbeddingAvailable() {
            try {
                ClassLoader classLoader = EmbeddingCompat.class.getClassLoader();
                if (classLoader == null) {
                    return false;
                }
                if (new SafeActivityEmbeddingComponentProvider(classLoader, new ConsumerAdapter(classLoader), WindowExtensionsProvider.getWindowExtensions()).getActivityEmbeddingComponent() == null) {
                    return false;
                }
                return true;
            } catch (NoClassDefFoundError | UnsupportedOperationException unused) {
                return false;
            }
        }

        private Companion() {
        }
    }

    public EmbeddingCompat(@NotNull ActivityEmbeddingComponent activityEmbeddingComponent, @NotNull EmbeddingAdapter embeddingAdapter, @NotNull ConsumerAdapter consumerAdapter, @NotNull Context context) {
        this.embeddingExtension = activityEmbeddingComponent;
        this.adapter = embeddingAdapter;
        this.consumerAdapter = consumerAdapter;
        this.applicationContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setEmbeddingCallback$lambda$0(EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallbackInterface, EmbeddingCompat embeddingCompat, List list) {
        embeddingCallbackInterface.onSplitInfoChanged(embeddingCompat.adapter.translate(list));
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    @RequiresWindowSdkExtension(version = 2)
    public void clearSplitAttributesCalculator() {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(2);
        this.embeddingExtension.clearSplitAttributesCalculator();
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    @RequiresWindowSdkExtension(version = 3)
    public void invalidateTopVisibleSplitAttributes() {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(3);
        this.embeddingExtension.invalidateTopVisibleSplitAttributes();
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public boolean isActivityEmbedded(@NotNull Activity activity) {
        return this.embeddingExtension.isActivityEmbedded(activity);
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void setEmbeddingCallback(@NotNull final EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallbackInterface) {
        if (ExtensionsUtil.INSTANCE.getSafeVendorApiLevel() < 2) {
            this.consumerAdapter.addConsumer(this.embeddingExtension, Reflection.getOrCreateKotlinClass(List.class), "setSplitInfoCallback", new Function1<List<?>, Unit>() { // from class: androidx.window.embedding.EmbeddingCompat$setEmbeddingCallback$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<?> list) {
                    invoke2(list);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull List<?> list) {
                    EmbeddingAdapter embeddingAdapter;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (obj instanceof androidx.window.extensions.embedding.SplitInfo) {
                            arrayList.add(obj);
                        }
                    }
                    EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallbackInterface2 = EmbeddingInterfaceCompat.EmbeddingCallbackInterface.this;
                    embeddingAdapter = this.adapter;
                    embeddingCallbackInterface2.onSplitInfoChanged(embeddingAdapter.translate(arrayList));
                }
            });
            return;
        }
        this.embeddingExtension.setSplitInfoCallback(new Consumer() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.window.extensions.core.util.function.Consumer
            public final void accept(Object obj) {
                EmbeddingCompat.setEmbeddingCallback$lambda$0(EmbeddingInterfaceCompat.EmbeddingCallbackInterface.this, this, (List) obj);
            }
        });
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    @RequiresWindowSdkExtension(version = 3)
    @NotNull
    public ActivityOptions setLaunchingActivityStack(@NotNull ActivityOptions activityOptions, @NotNull IBinder iBinder) {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(3);
        return this.embeddingExtension.setLaunchingActivityStack(activityOptions, iBinder);
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void setRules(@NotNull Set<? extends EmbeddingRule> set) {
        Iterator<? extends EmbeddingRule> it = set.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next() instanceof SplitRule) {
                if (!Intrinsics.areEqual(SplitController.Companion.getInstance(this.applicationContext).getSplitSupportStatus(), SplitController.SplitSupportStatus.SPLIT_AVAILABLE)) {
                    BuildConfig.INSTANCE.getVerificationMode();
                    VerificationMode verificationMode = VerificationMode.STRICT;
                    return;
                }
            }
        }
        this.embeddingExtension.setEmbeddingRules(this.adapter.translate(this.applicationContext, set));
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    @RequiresWindowSdkExtension(version = 2)
    public void setSplitAttributesCalculator(@NotNull Function1<? super SplitAttributesCalculatorParams, SplitAttributes> function1) {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(2);
        this.embeddingExtension.setSplitAttributesCalculator(this.adapter.translateSplitAttributesCalculator(function1));
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    @RequiresWindowSdkExtension(version = 3)
    public void updateSplitAttributes(@NotNull SplitInfo splitInfo, @NotNull SplitAttributes splitAttributes) {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(3);
        this.embeddingExtension.updateSplitAttributes(splitInfo.getToken$window_release(), this.adapter.translateSplitAttributes(splitAttributes));
    }
}
