package androidx.window.embedding;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Binder;
import android.util.Pair;
import android.view.WindowMetrics;
import androidx.activity.Wwwwwwwwwwwwwwwww;
import androidx.window.WindowSdkExtensions;
import androidx.window.core.PredicateAdapter;
import androidx.window.embedding.SplitAttributes;
import androidx.window.embedding.SplitRule;
import androidx.window.extensions.core.util.function.Function;
import androidx.window.extensions.core.util.function.Predicate;
import androidx.window.extensions.embedding.ActivityRule;
import androidx.window.extensions.embedding.SplitAttributes;
import androidx.window.extensions.embedding.SplitPairRule;
import androidx.window.extensions.embedding.SplitPlaceholderRule;
import androidx.window.extensions.layout.WindowLayoutInfo;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.window.layout.adapter.extensions.ExtensionsWindowLayoutInfoAdapter;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 82\u00020\u0001:\u000389:B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u000eJ\u0015\u0010\r\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0000¢\u0006\u0002\b\u0017J\u0010\u0010\r\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0010\u0010\r\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001e2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001eJ\u001c\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\n\u0010$\u001a\u0006\u0012\u0002\b\u00030%H\u0002J\u000e\u0010&\u001a\u00020\n2\u0006\u0010'\u001a\u00020(J\u000e\u0010)\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014J&\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00160+2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00140-J$\u0010.\u001a\u00020/2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\"\u001a\u0002002\n\u0010$\u001a\u0006\u0012\u0002\b\u00030%H\u0002J$\u00101\u001a\u0002022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\"\u001a\u0002032\n\u0010$\u001a\u0006\u0012\u0002\b\u00030%H\u0002J\u0010\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0002R\u0012\u0010\u0005\u001a\u00060\u0006R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00060\bR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006;"}, d2 = {"Landroidx/window/embedding/EmbeddingAdapter;", "", "predicateAdapter", "Landroidx/window/core/PredicateAdapter;", "(Landroidx/window/core/PredicateAdapter;)V", "api1Impl", "Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;", "api2Impl", "Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;", "vendorApiLevel", "", "getVendorApiLevel", "()I", "translate", "", "Landroidx/window/extensions/embedding/EmbeddingRule;", "context", "Landroid/content/Context;", "rules", "Landroidx/window/embedding/EmbeddingRule;", "Landroidx/window/embedding/SplitAttributes;", "splitAttributes", "Landroidx/window/extensions/embedding/SplitAttributes;", "translate$window_release", "Landroidx/window/embedding/SplitAttributesCalculatorParams;", "params", "Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;", "Landroidx/window/embedding/SplitInfo;", "splitInfo", "Landroidx/window/extensions/embedding/SplitInfo;", "", "splitInfoList", "translateActivityRule", "Landroidx/window/extensions/embedding/ActivityRule;", "rule", "Landroidx/window/embedding/ActivityRule;", "predicateClass", "Ljava/lang/Class;", "translateFinishBehavior", "behavior", "Landroidx/window/embedding/SplitRule$FinishBehavior;", "translateSplitAttributes", "translateSplitAttributesCalculator", "Landroidx/window/extensions/core/util/function/Function;", "calculator", "Lkotlin/Function1;", "translateSplitPairRule", "Landroidx/window/extensions/embedding/SplitPairRule;", "Landroidx/window/embedding/SplitPairRule;", "translateSplitPlaceholderRule", "Landroidx/window/extensions/embedding/SplitPlaceholderRule;", "Landroidx/window/embedding/SplitPlaceholderRule;", "translateSplitType", "Landroidx/window/extensions/embedding/SplitAttributes$SplitType;", "splitType", "Landroidx/window/embedding/SplitAttributes$SplitType;", "Companion", "VendorApiLevel1Impl", "VendorApiLevel2Impl", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEmbeddingAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmbeddingAdapter.kt\nandroidx/window/embedding/EmbeddingAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,524:1\n1549#2:525\n1620#2,3:526\n1549#2:529\n1620#2,3:530\n1747#2,3:533\n1747#2,3:536\n1747#2,3:539\n1747#2,3:542\n1747#2,3:545\n1747#2,3:548\n*S KotlinDebug\n*F\n+ 1 EmbeddingAdapter.kt\nandroidx/window/embedding/EmbeddingAdapter\n*L\n71#1:525\n71#1:526,3\n307#1:529\n307#1:530,3\n158#1:533,3\n164#1:536,3\n247#1:539,3\n250#1:542,3\n290#1:545,3\n293#1:548,3\n*E\n"})
/* loaded from: classes3.dex */
public final class EmbeddingAdapter {
    @NotNull
    private final VendorApiLevel1Impl api1Impl;
    @NotNull
    private final VendorApiLevel2Impl api2Impl = new VendorApiLevel2Impl();
    @NotNull
    private final PredicateAdapter predicateAdapter;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Binder INVALID_SPLIT_INFO_TOKEN = new Binder();
    @NotNull
    private static final Binder INVALID_ACTIVITY_STACK_TOKEN = new Binder();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Landroidx/window/embedding/EmbeddingAdapter$Companion;", "", "()V", "INVALID_ACTIVITY_STACK_TOKEN", "Landroid/os/Binder;", "getINVALID_ACTIVITY_STACK_TOKEN", "()Landroid/os/Binder;", "INVALID_SPLIT_INFO_TOKEN", "getINVALID_SPLIT_INFO_TOKEN", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Binder getINVALID_ACTIVITY_STACK_TOKEN() {
            return EmbeddingAdapter.INVALID_ACTIVITY_STACK_TOKEN;
        }

        @NotNull
        public final Binder getINVALID_SPLIT_INFO_TOKEN() {
            return EmbeddingAdapter.INVALID_SPLIT_INFO_TOKEN;
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;", "", "(Landroidx/window/embedding/EmbeddingAdapter;)V", "translateCompat", "Landroidx/window/embedding/SplitInfo;", "splitInfo", "Landroidx/window/extensions/embedding/SplitInfo;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public final class VendorApiLevel2Impl {
        public VendorApiLevel2Impl() {
        }

        @NotNull
        public final SplitInfo translateCompat(@NotNull androidx.window.extensions.embedding.SplitInfo splitInfo) {
            androidx.window.extensions.embedding.ActivityStack primaryActivityStack = splitInfo.getPrimaryActivityStack();
            ActivityStack activityStack = new ActivityStack(primaryActivityStack.getActivities(), primaryActivityStack.isEmpty());
            androidx.window.extensions.embedding.ActivityStack secondaryActivityStack = splitInfo.getSecondaryActivityStack();
            return new SplitInfo(activityStack, new ActivityStack(secondaryActivityStack.getActivities(), secondaryActivityStack.isEmpty()), EmbeddingAdapter.this.translate$window_release(splitInfo.getSplitAttributes()), EmbeddingAdapter.Companion.getINVALID_SPLIT_INFO_TOKEN());
        }
    }

    public EmbeddingAdapter(@NotNull PredicateAdapter predicateAdapter) {
        this.predicateAdapter = predicateAdapter;
        this.api1Impl = new VendorApiLevel1Impl(predicateAdapter);
    }

    private final int getVendorApiLevel() {
        return WindowSdkExtensions.Companion.getInstance().getExtensionVersion();
    }

    private final androidx.window.extensions.embedding.ActivityRule translateActivityRule(final ActivityRule activityRule, Class<?> cls) {
        if (getVendorApiLevel() < 2) {
            return this.api1Impl.translateActivityRuleCompat(activityRule, cls);
        }
        ActivityRule.Builder shouldAlwaysExpand = new ActivityRule.Builder(new Predicate() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.window.extensions.core.util.function.Predicate
            public final boolean test(Object obj) {
                boolean translateActivityRule$lambda$13;
                translateActivityRule$lambda$13 = EmbeddingAdapter.translateActivityRule$lambda$13(ActivityRule.this, (Activity) obj);
                return translateActivityRule$lambda$13;
            }
        }, new Predicate() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.window.extensions.core.util.function.Predicate
            public final boolean test(Object obj) {
                boolean translateActivityRule$lambda$15;
                translateActivityRule$lambda$15 = EmbeddingAdapter.translateActivityRule$lambda$15(ActivityRule.this, (Intent) obj);
                return translateActivityRule$lambda$15;
            }
        }).setShouldAlwaysExpand(activityRule.getAlwaysExpand());
        String tag = activityRule.getTag();
        if (tag != null) {
            shouldAlwaysExpand.setTag(tag);
        }
        return shouldAlwaysExpand.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateActivityRule$lambda$13(ActivityRule activityRule, Activity activity) {
        Set<ActivityFilter> filters = activityRule.getFilters();
        if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filters) && filters.isEmpty()) {
            return false;
        }
        for (ActivityFilter activityFilter : filters) {
            if (activityFilter.matchesActivity(activity)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateActivityRule$lambda$15(ActivityRule activityRule, Intent intent) {
        Set<ActivityFilter> filters = activityRule.getFilters();
        if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filters) && filters.isEmpty()) {
            return false;
        }
        for (ActivityFilter activityFilter : filters) {
            if (activityFilter.matchesIntent(intent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.window.extensions.embedding.SplitAttributes translateSplitAttributesCalculator$lambda$0(EmbeddingAdapter embeddingAdapter, Function1 function1, androidx.window.extensions.embedding.SplitAttributesCalculatorParams splitAttributesCalculatorParams) {
        return embeddingAdapter.translateSplitAttributes((SplitAttributes) function1.invoke(embeddingAdapter.translate(splitAttributesCalculatorParams)));
    }

    private final androidx.window.extensions.embedding.SplitPairRule translateSplitPairRule(final Context context, final SplitPairRule splitPairRule, Class<?> cls) {
        if (getVendorApiLevel() < 2) {
            return this.api1Impl.translateSplitPairRuleCompat(context, splitPairRule, cls);
        }
        Predicate predicate = new Predicate() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.window.extensions.core.util.function.Predicate
            public final boolean test(Object obj) {
                boolean translateSplitPairRule$lambda$3;
                translateSplitPairRule$lambda$3 = EmbeddingAdapter.translateSplitPairRule$lambda$3(SplitPairRule.this, (Pair) obj);
                return translateSplitPairRule$lambda$3;
            }
        };
        Predicate predicate2 = new Predicate() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.window.extensions.core.util.function.Predicate
            public final boolean test(Object obj) {
                boolean translateSplitPairRule$lambda$5;
                translateSplitPairRule$lambda$5 = EmbeddingAdapter.translateSplitPairRule$lambda$5(SplitPairRule.this, (Pair) obj);
                return translateSplitPairRule$lambda$5;
            }
        };
        Predicate predicate3 = new Predicate() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.window.extensions.core.util.function.Predicate
            public final boolean test(Object obj) {
                boolean checkParentMetrics$window_release;
                checkParentMetrics$window_release = SplitPairRule.this.checkParentMetrics$window_release(context, (WindowMetrics) obj);
                return checkParentMetrics$window_release;
            }
        };
        String tag = splitPairRule.getTag();
        SplitPairRule.Builder shouldClearTop = new SplitPairRule.Builder(predicate, predicate2, predicate3).setDefaultSplitAttributes(translateSplitAttributes(splitPairRule.getDefaultSplitAttributes())).setFinishPrimaryWithSecondary(translateFinishBehavior(splitPairRule.getFinishPrimaryWithSecondary())).setFinishSecondaryWithPrimary(translateFinishBehavior(splitPairRule.getFinishSecondaryWithPrimary())).setShouldClearTop(splitPairRule.getClearTop());
        if (tag != null) {
            shouldClearTop.setTag(tag);
        }
        return shouldClearTop.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPairRule$lambda$3(SplitPairRule splitPairRule, Pair pair) {
        Set<SplitPairFilter> filters = splitPairRule.getFilters();
        if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filters) && filters.isEmpty()) {
            return false;
        }
        for (SplitPairFilter splitPairFilter : filters) {
            if (splitPairFilter.matchesActivityPair((Activity) pair.first, (Activity) pair.second)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPairRule$lambda$5(SplitPairRule splitPairRule, Pair pair) {
        Set<SplitPairFilter> filters = splitPairRule.getFilters();
        if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filters) && filters.isEmpty()) {
            return false;
        }
        for (SplitPairFilter splitPairFilter : filters) {
            if (splitPairFilter.matchesActivityIntentPair((Activity) pair.first, (Intent) pair.second)) {
                return true;
            }
        }
        return false;
    }

    private final androidx.window.extensions.embedding.SplitPlaceholderRule translateSplitPlaceholderRule(final Context context, final SplitPlaceholderRule splitPlaceholderRule, Class<?> cls) {
        if (getVendorApiLevel() < 2) {
            return this.api1Impl.translateSplitPlaceholderRuleCompat(context, splitPlaceholderRule, cls);
        }
        Predicate predicate = new Predicate() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.window.extensions.core.util.function.Predicate
            public final boolean test(Object obj) {
                boolean translateSplitPlaceholderRule$lambda$8;
                translateSplitPlaceholderRule$lambda$8 = EmbeddingAdapter.translateSplitPlaceholderRule$lambda$8(SplitPlaceholderRule.this, (Activity) obj);
                return translateSplitPlaceholderRule$lambda$8;
            }
        };
        Predicate predicate2 = new Predicate() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.window.extensions.core.util.function.Predicate
            public final boolean test(Object obj) {
                boolean translateSplitPlaceholderRule$lambda$10;
                translateSplitPlaceholderRule$lambda$10 = EmbeddingAdapter.translateSplitPlaceholderRule$lambda$10(SplitPlaceholderRule.this, (Intent) obj);
                return translateSplitPlaceholderRule$lambda$10;
            }
        };
        Predicate predicate3 = new Predicate() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.window.extensions.core.util.function.Predicate
            public final boolean test(Object obj) {
                boolean checkParentMetrics$window_release;
                checkParentMetrics$window_release = SplitPlaceholderRule.this.checkParentMetrics$window_release(context, (WindowMetrics) obj);
                return checkParentMetrics$window_release;
            }
        };
        String tag = splitPlaceholderRule.getTag();
        SplitPlaceholderRule.Builder finishPrimaryWithPlaceholder = new SplitPlaceholderRule.Builder(splitPlaceholderRule.getPlaceholderIntent(), predicate, predicate2, predicate3).setSticky(splitPlaceholderRule.isSticky()).setDefaultSplitAttributes(translateSplitAttributes(splitPlaceholderRule.getDefaultSplitAttributes())).setFinishPrimaryWithPlaceholder(translateFinishBehavior(splitPlaceholderRule.getFinishPrimaryWithPlaceholder()));
        if (tag != null) {
            finishPrimaryWithPlaceholder.setTag(tag);
        }
        return finishPrimaryWithPlaceholder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPlaceholderRule$lambda$10(SplitPlaceholderRule splitPlaceholderRule, Intent intent) {
        Set<ActivityFilter> filters = splitPlaceholderRule.getFilters();
        if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filters) && filters.isEmpty()) {
            return false;
        }
        for (ActivityFilter activityFilter : filters) {
            if (activityFilter.matchesIntent(intent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPlaceholderRule$lambda$8(SplitPlaceholderRule splitPlaceholderRule, Activity activity) {
        Set<ActivityFilter> filters = splitPlaceholderRule.getFilters();
        if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filters) && filters.isEmpty()) {
            return false;
        }
        for (ActivityFilter activityFilter : filters) {
            if (activityFilter.matchesActivity(activity)) {
                return true;
            }
        }
        return false;
    }

    private final SplitAttributes.SplitType translateSplitType(SplitAttributes.SplitType splitType) {
        if (getVendorApiLevel() >= 2) {
            if (Intrinsics.areEqual(splitType, SplitAttributes.SplitType.SPLIT_TYPE_HINGE)) {
                return new SplitAttributes.SplitType.HingeSplitType(translateSplitType(SplitAttributes.SplitType.SPLIT_TYPE_EQUAL));
            }
            if (Intrinsics.areEqual(splitType, SplitAttributes.SplitType.SPLIT_TYPE_EXPAND)) {
                return new SplitAttributes.SplitType.ExpandContainersSplitType();
            }
            float value$window_release = splitType.getValue$window_release();
            double d = value$window_release;
            if (d > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && d < 1.0d) {
                return new SplitAttributes.SplitType.RatioSplitType(value$window_release);
            }
            throw new IllegalArgumentException("Unsupported SplitType: " + splitType + " with value: " + splitType.getValue$window_release());
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @NotNull
    public final List<SplitInfo> translate(@NotNull List<? extends androidx.window.extensions.embedding.SplitInfo> list) {
        List<? extends androidx.window.extensions.embedding.SplitInfo> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (androidx.window.extensions.embedding.SplitInfo splitInfo : list2) {
            arrayList.add(translate(splitInfo));
        }
        return arrayList;
    }

    @NotNull
    public final SplitAttributes translate$window_release(@NotNull androidx.window.extensions.embedding.SplitAttributes splitAttributes) {
        SplitAttributes.SplitType ratio;
        SplitAttributes.LayoutDirection layoutDirection;
        SplitAttributes.Builder builder = new SplitAttributes.Builder();
        SplitAttributes.SplitType.RatioSplitType splitType = splitAttributes.getSplitType();
        if (splitType instanceof SplitAttributes.SplitType.HingeSplitType) {
            ratio = SplitAttributes.SplitType.SPLIT_TYPE_HINGE;
        } else if (splitType instanceof SplitAttributes.SplitType.ExpandContainersSplitType) {
            ratio = SplitAttributes.SplitType.SPLIT_TYPE_EXPAND;
        } else if (splitType instanceof SplitAttributes.SplitType.RatioSplitType) {
            ratio = SplitAttributes.SplitType.Companion.ratio(splitType.getRatio());
        } else {
            throw new IllegalArgumentException("Unknown split type: " + splitType);
        }
        SplitAttributes.Builder splitType2 = builder.setSplitType(ratio);
        int layoutDirection2 = splitAttributes.getLayoutDirection();
        if (layoutDirection2 != 0) {
            if (layoutDirection2 != 1) {
                if (layoutDirection2 != 3) {
                    if (layoutDirection2 != 4) {
                        if (layoutDirection2 == 5) {
                            layoutDirection = SplitAttributes.LayoutDirection.BOTTOM_TO_TOP;
                        } else {
                            throw new IllegalArgumentException("Unknown layout direction: " + layoutDirection2);
                        }
                    } else {
                        layoutDirection = SplitAttributes.LayoutDirection.TOP_TO_BOTTOM;
                    }
                } else {
                    layoutDirection = SplitAttributes.LayoutDirection.LOCALE;
                }
            } else {
                layoutDirection = SplitAttributes.LayoutDirection.RIGHT_TO_LEFT;
            }
        } else {
            layoutDirection = SplitAttributes.LayoutDirection.LEFT_TO_RIGHT;
        }
        return splitType2.setLayoutDirection(layoutDirection).build();
    }

    public final int translateFinishBehavior(@NotNull SplitRule.FinishBehavior finishBehavior) {
        if (Intrinsics.areEqual(finishBehavior, SplitRule.FinishBehavior.NEVER)) {
            return 0;
        }
        if (Intrinsics.areEqual(finishBehavior, SplitRule.FinishBehavior.ALWAYS)) {
            return 1;
        }
        if (Intrinsics.areEqual(finishBehavior, SplitRule.FinishBehavior.ADJACENT)) {
            return 2;
        }
        throw new IllegalArgumentException("Unknown finish behavior:" + finishBehavior);
    }

    @NotNull
    public final androidx.window.extensions.embedding.SplitAttributes translateSplitAttributes(@NotNull SplitAttributes splitAttributes) {
        int i;
        if (getVendorApiLevel() >= 2) {
            SplitAttributes.Builder splitType = new SplitAttributes.Builder().setSplitType(translateSplitType(splitAttributes.getSplitType()));
            SplitAttributes.LayoutDirection layoutDirection = splitAttributes.getLayoutDirection();
            if (Intrinsics.areEqual(layoutDirection, SplitAttributes.LayoutDirection.LOCALE)) {
                i = 3;
            } else if (Intrinsics.areEqual(layoutDirection, SplitAttributes.LayoutDirection.LEFT_TO_RIGHT)) {
                i = 0;
            } else if (Intrinsics.areEqual(layoutDirection, SplitAttributes.LayoutDirection.RIGHT_TO_LEFT)) {
                i = 1;
            } else if (Intrinsics.areEqual(layoutDirection, SplitAttributes.LayoutDirection.TOP_TO_BOTTOM)) {
                i = 4;
            } else if (Intrinsics.areEqual(layoutDirection, SplitAttributes.LayoutDirection.BOTTOM_TO_TOP)) {
                i = 5;
            } else {
                throw new IllegalArgumentException("Unsupported layoutDirection:" + splitAttributes + ".layoutDirection");
            }
            return splitType.setLayoutDirection(i).build();
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @NotNull
    public final Function<androidx.window.extensions.embedding.SplitAttributesCalculatorParams, androidx.window.extensions.embedding.SplitAttributes> translateSplitAttributesCalculator(@NotNull final Function1<? super SplitAttributesCalculatorParams, SplitAttributes> function1) {
        return new Function() { // from class: androidx.window.embedding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.window.extensions.core.util.function.Function
            public final Object apply(Object obj) {
                androidx.window.extensions.embedding.SplitAttributes translateSplitAttributesCalculator$lambda$0;
                translateSplitAttributesCalculator$lambda$0 = EmbeddingAdapter.translateSplitAttributesCalculator$lambda$0(EmbeddingAdapter.this, function1, (androidx.window.extensions.embedding.SplitAttributesCalculatorParams) obj);
                return translateSplitAttributesCalculator$lambda$0;
            }
        };
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0002J\u0016\u0010\u000e\u001a\u00020\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0003J\u0016\u0010\u0012\u001a\u00020\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0003J\u0016\u0010\u0013\u001a\u00020\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0010H\u0003J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u001e\u001a\u00020\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0010H\u0003J\u0018\u0010\u001f\u001a\u00020\u00012\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0003J\u001c\u0010$\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0%2\u0006\u0010\r\u001a\u00020\bH\u0002J\"\u0010(\u001a\u00020)2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0018\u001a\u00020*2\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001bJ\"\u0010+\u001a\u00020,2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0018\u001a\u00020-2\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001bJ\u0014\u0010.\u001a\u00020/*\u00020/2\u0006\u00100\u001a\u00020\bH\u0002J\u0014\u0010.\u001a\u000201*\u0002012\u0006\u00100\u001a\u00020\bH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u00062"}, d2 = {"Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;", "", "predicateAdapter", "Landroidx/window/core/PredicateAdapter;", "(Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/PredicateAdapter;)V", "getPredicateAdapter", "()Landroidx/window/core/PredicateAdapter;", "getSplitAttributesCompat", "Landroidx/window/embedding/SplitAttributes;", "splitInfo", "Landroidx/window/extensions/embedding/SplitInfo;", "isSplitAttributesSupported", "", "attrs", "translateActivityIntentPredicates", "splitPairFilters", "", "Landroidx/window/embedding/SplitPairFilter;", "translateActivityPairPredicates", "translateActivityPredicates", "activityFilters", "Landroidx/window/embedding/ActivityFilter;", "translateActivityRuleCompat", "Landroidx/window/extensions/embedding/ActivityRule;", "rule", "Landroidx/window/embedding/ActivityRule;", "predicateClass", "Ljava/lang/Class;", "translateCompat", "Landroidx/window/embedding/SplitInfo;", "translateIntentPredicates", "translateParentMetricsPredicate", "context", "Landroid/content/Context;", "splitRule", "Landroidx/window/embedding/SplitRule;", "translateSplitAttributesCompatInternal", "Lkotlin/Pair;", "", "", "translateSplitPairRuleCompat", "Landroidx/window/extensions/embedding/SplitPairRule;", "Landroidx/window/embedding/SplitPairRule;", "translateSplitPlaceholderRuleCompat", "Landroidx/window/extensions/embedding/SplitPlaceholderRule;", "Landroidx/window/embedding/SplitPlaceholderRule;", "setDefaultSplitAttributesCompat", "Landroidx/window/extensions/embedding/SplitPairRule$Builder;", "defaultAttrs", "Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public final class VendorApiLevel1Impl {
        @NotNull
        private final PredicateAdapter predicateAdapter;

        public VendorApiLevel1Impl(@NotNull PredicateAdapter predicateAdapter) {
            this.predicateAdapter = predicateAdapter;
        }

        private final boolean isSplitAttributesSupported(SplitAttributes splitAttributes) {
            double value$window_release = splitAttributes.getSplitType().getValue$window_release();
            if (FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE <= value$window_release && value$window_release <= 1.0d && splitAttributes.getSplitType().getValue$window_release() != 1.0f && ArraysKt.contains(new SplitAttributes.LayoutDirection[]{SplitAttributes.LayoutDirection.LEFT_TO_RIGHT, SplitAttributes.LayoutDirection.RIGHT_TO_LEFT, SplitAttributes.LayoutDirection.LOCALE}, splitAttributes.getLayoutDirection())) {
                return true;
            }
            return false;
        }

        private final SplitPlaceholderRule.Builder setDefaultSplitAttributesCompat(SplitPlaceholderRule.Builder builder, SplitAttributes splitAttributes) {
            kotlin.Pair<Float, Integer> translateSplitAttributesCompatInternal = translateSplitAttributesCompatInternal(splitAttributes);
            float floatValue = translateSplitAttributesCompatInternal.component1().floatValue();
            int intValue = translateSplitAttributesCompatInternal.component2().intValue();
            builder.setSplitRatio(floatValue);
            builder.setLayoutDirection(intValue);
            return builder;
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        private final Object translateActivityIntentPredicates(final Set<SplitPairFilter> set) {
            return this.predicateAdapter.buildPairPredicate(Reflection.getOrCreateKotlinClass(Activity.class), Reflection.getOrCreateKotlinClass(Intent.class), new Function2<Activity, Intent, Boolean>() { // from class: androidx.window.embedding.EmbeddingAdapter$VendorApiLevel1Impl$translateActivityIntentPredicates$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Boolean invoke(@NotNull Activity activity, @NotNull Intent intent) {
                    Set<SplitPairFilter> set2 = set;
                    boolean z = false;
                    if (!Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(set2) || !set2.isEmpty()) {
                        Iterator<T> it = set2.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            } else if (((SplitPairFilter) it.next()).matchesActivityIntentPair(activity, intent)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    return Boolean.valueOf(z);
                }
            });
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        private final Object translateActivityPairPredicates(final Set<SplitPairFilter> set) {
            return this.predicateAdapter.buildPairPredicate(Reflection.getOrCreateKotlinClass(Activity.class), Reflection.getOrCreateKotlinClass(Activity.class), new Function2<Activity, Activity, Boolean>() { // from class: androidx.window.embedding.EmbeddingAdapter$VendorApiLevel1Impl$translateActivityPairPredicates$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Boolean invoke(@NotNull Activity activity, @NotNull Activity activity2) {
                    Set<SplitPairFilter> set2 = set;
                    boolean z = false;
                    if (!Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(set2) || !set2.isEmpty()) {
                        Iterator<T> it = set2.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            } else if (((SplitPairFilter) it.next()).matchesActivityPair(activity, activity2)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    return Boolean.valueOf(z);
                }
            });
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        private final Object translateActivityPredicates(final Set<ActivityFilter> set) {
            return this.predicateAdapter.buildPredicate(Reflection.getOrCreateKotlinClass(Activity.class), new Function1<Activity, Boolean>() { // from class: androidx.window.embedding.EmbeddingAdapter$VendorApiLevel1Impl$translateActivityPredicates$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Activity activity) {
                    Set<ActivityFilter> set2 = set;
                    boolean z = false;
                    if (!Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(set2) || !set2.isEmpty()) {
                        Iterator<T> it = set2.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            } else if (((ActivityFilter) it.next()).matchesActivity(activity)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    return Boolean.valueOf(z);
                }
            });
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        private final Object translateIntentPredicates(final Set<ActivityFilter> set) {
            return this.predicateAdapter.buildPredicate(Reflection.getOrCreateKotlinClass(Intent.class), new Function1<Intent, Boolean>() { // from class: androidx.window.embedding.EmbeddingAdapter$VendorApiLevel1Impl$translateIntentPredicates$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Intent intent) {
                    Set<ActivityFilter> set2 = set;
                    boolean z = false;
                    if (!Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(set2) || !set2.isEmpty()) {
                        Iterator<T> it = set2.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            } else if (((ActivityFilter) it.next()).matchesIntent(intent)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    return Boolean.valueOf(z);
                }
            });
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        private final Object translateParentMetricsPredicate(final Context context, final SplitRule splitRule) {
            return this.predicateAdapter.buildPredicate(Reflection.getOrCreateKotlinClass(Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), new Function1<WindowMetrics, Boolean>() { // from class: androidx.window.embedding.EmbeddingAdapter$VendorApiLevel1Impl$translateParentMetricsPredicate$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(WindowMetrics windowMetrics) {
                    return invoke2(Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(windowMetrics));
                }

                @NotNull
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final Boolean invoke2(@NotNull WindowMetrics windowMetrics) {
                    return Boolean.valueOf(SplitRule.this.checkParentMetrics$window_release(context, windowMetrics));
                }
            });
        }

        private final kotlin.Pair<Float, Integer> translateSplitAttributesCompatInternal(SplitAttributes splitAttributes) {
            int i = 3;
            if (!isSplitAttributesSupported(splitAttributes)) {
                return new kotlin.Pair<>(Float.valueOf(0.0f), 3);
            }
            Float valueOf = Float.valueOf(splitAttributes.getSplitType().getValue$window_release());
            SplitAttributes.LayoutDirection layoutDirection = splitAttributes.getLayoutDirection();
            if (!Intrinsics.areEqual(layoutDirection, SplitAttributes.LayoutDirection.LOCALE)) {
                if (Intrinsics.areEqual(layoutDirection, SplitAttributes.LayoutDirection.LEFT_TO_RIGHT)) {
                    i = 0;
                } else if (Intrinsics.areEqual(layoutDirection, SplitAttributes.LayoutDirection.RIGHT_TO_LEFT)) {
                    i = 1;
                } else {
                    throw new IllegalStateException("Unsupported layout direction must be covered in @isSplitAttributesSupported!");
                }
            }
            return new kotlin.Pair<>(valueOf, Integer.valueOf(i));
        }

        @NotNull
        public final PredicateAdapter getPredicateAdapter() {
            return this.predicateAdapter;
        }

        @NotNull
        public final SplitAttributes getSplitAttributesCompat(@NotNull androidx.window.extensions.embedding.SplitInfo splitInfo) {
            return new SplitAttributes.Builder().setSplitType(SplitAttributes.SplitType.Companion.buildSplitTypeFromValue$window_release(splitInfo.getSplitRatio())).setLayoutDirection(SplitAttributes.LayoutDirection.LOCALE).build();
        }

        @NotNull
        public final androidx.window.extensions.embedding.ActivityRule translateActivityRuleCompat(@NotNull ActivityRule activityRule, @NotNull Class<?> cls) {
            return ((ActivityRule.Builder) ActivityRule.Builder.class.getConstructor(cls, cls).newInstance(translateActivityPredicates(activityRule.getFilters()), translateIntentPredicates(activityRule.getFilters()))).setShouldAlwaysExpand(activityRule.getAlwaysExpand()).build();
        }

        @NotNull
        public final SplitInfo translateCompat(@NotNull androidx.window.extensions.embedding.SplitInfo splitInfo) {
            return new SplitInfo(new ActivityStack(splitInfo.getPrimaryActivityStack().getActivities(), splitInfo.getPrimaryActivityStack().isEmpty()), new ActivityStack(splitInfo.getSecondaryActivityStack().getActivities(), splitInfo.getSecondaryActivityStack().isEmpty()), getSplitAttributesCompat(splitInfo), EmbeddingAdapter.Companion.getINVALID_SPLIT_INFO_TOKEN());
        }

        @NotNull
        public final androidx.window.extensions.embedding.SplitPairRule translateSplitPairRuleCompat(@NotNull Context context, @NotNull SplitPairRule splitPairRule, @NotNull Class<?> cls) {
            return setDefaultSplitAttributesCompat((SplitPairRule.Builder) SplitPairRule.Builder.class.getConstructor(cls, cls, cls).newInstance(translateActivityPairPredicates(splitPairRule.getFilters()), translateActivityIntentPredicates(splitPairRule.getFilters()), translateParentMetricsPredicate(context, splitPairRule)), splitPairRule.getDefaultSplitAttributes()).setShouldClearTop(splitPairRule.getClearTop()).setFinishPrimaryWithSecondary(EmbeddingAdapter.this.translateFinishBehavior(splitPairRule.getFinishPrimaryWithSecondary())).setFinishSecondaryWithPrimary(EmbeddingAdapter.this.translateFinishBehavior(splitPairRule.getFinishSecondaryWithPrimary())).build();
        }

        @NotNull
        public final androidx.window.extensions.embedding.SplitPlaceholderRule translateSplitPlaceholderRuleCompat(@NotNull Context context, @NotNull SplitPlaceholderRule splitPlaceholderRule, @NotNull Class<?> cls) {
            return setDefaultSplitAttributesCompat(((SplitPlaceholderRule.Builder) SplitPlaceholderRule.Builder.class.getConstructor(Intent.class, cls, cls, cls).newInstance(splitPlaceholderRule.getPlaceholderIntent(), translateActivityPredicates(splitPlaceholderRule.getFilters()), translateIntentPredicates(splitPlaceholderRule.getFilters()), translateParentMetricsPredicate(context, splitPlaceholderRule))).setSticky(splitPlaceholderRule.isSticky()).setFinishPrimaryWithSecondary(EmbeddingAdapter.this.translateFinishBehavior(splitPlaceholderRule.getFinishPrimaryWithPlaceholder())), splitPlaceholderRule.getDefaultSplitAttributes()).build();
        }

        private final SplitPairRule.Builder setDefaultSplitAttributesCompat(SplitPairRule.Builder builder, SplitAttributes splitAttributes) {
            kotlin.Pair<Float, Integer> translateSplitAttributesCompatInternal = translateSplitAttributesCompatInternal(splitAttributes);
            float floatValue = translateSplitAttributesCompatInternal.component1().floatValue();
            int intValue = translateSplitAttributesCompatInternal.component2().intValue();
            builder.setSplitRatio(floatValue);
            builder.setLayoutDirection(intValue);
            return builder;
        }
    }

    private final SplitInfo translate(androidx.window.extensions.embedding.SplitInfo splitInfo) {
        int vendorApiLevel = getVendorApiLevel();
        if (vendorApiLevel != 1) {
            if (vendorApiLevel != 2) {
                androidx.window.extensions.embedding.ActivityStack primaryActivityStack = splitInfo.getPrimaryActivityStack();
                androidx.window.extensions.embedding.ActivityStack secondaryActivityStack = splitInfo.getSecondaryActivityStack();
                return new SplitInfo(new ActivityStack(primaryActivityStack.getActivities(), primaryActivityStack.isEmpty()), new ActivityStack(secondaryActivityStack.getActivities(), secondaryActivityStack.isEmpty()), translate$window_release(splitInfo.getSplitAttributes()), splitInfo.getToken());
            }
            return this.api2Impl.translateCompat(splitInfo);
        }
        return this.api1Impl.translateCompat(splitInfo);
    }

    @SuppressLint({"NewApi"})
    @NotNull
    public final SplitAttributesCalculatorParams translate(@NotNull androidx.window.extensions.embedding.SplitAttributesCalculatorParams splitAttributesCalculatorParams) {
        WindowMetrics parentWindowMetrics = splitAttributesCalculatorParams.getParentWindowMetrics();
        Configuration parentConfiguration = splitAttributesCalculatorParams.getParentConfiguration();
        WindowLayoutInfo parentWindowLayoutInfo = splitAttributesCalculatorParams.getParentWindowLayoutInfo();
        androidx.window.extensions.embedding.SplitAttributes defaultSplitAttributes = splitAttributesCalculatorParams.getDefaultSplitAttributes();
        boolean areDefaultConstraintsSatisfied = splitAttributesCalculatorParams.areDefaultConstraintsSatisfied();
        String splitRuleTag = splitAttributesCalculatorParams.getSplitRuleTag();
        androidx.window.layout.WindowMetrics translateWindowMetrics$window_release = WindowMetricsCalculator.Companion.translateWindowMetrics$window_release(parentWindowMetrics);
        return new SplitAttributesCalculatorParams(translateWindowMetrics$window_release, parentConfiguration, ExtensionsWindowLayoutInfoAdapter.INSTANCE.translate$window_release(translateWindowMetrics$window_release, parentWindowLayoutInfo), translate$window_release(defaultSplitAttributes), areDefaultConstraintsSatisfied, splitRuleTag);
    }

    @NotNull
    public final Set<androidx.window.extensions.embedding.EmbeddingRule> translate(@NotNull Context context, @NotNull Set<? extends EmbeddingRule> set) {
        androidx.window.extensions.embedding.SplitPairRule translateActivityRule;
        Class<?> predicateClassOrNull$window_release = this.predicateAdapter.predicateClassOrNull$window_release();
        if (predicateClassOrNull$window_release == null) {
            return SetsKt.emptySet();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        for (EmbeddingRule embeddingRule : set) {
            if (embeddingRule instanceof SplitPairRule) {
                translateActivityRule = translateSplitPairRule(context, (SplitPairRule) embeddingRule, predicateClassOrNull$window_release);
            } else if (embeddingRule instanceof SplitPlaceholderRule) {
                translateActivityRule = translateSplitPlaceholderRule(context, (SplitPlaceholderRule) embeddingRule, predicateClassOrNull$window_release);
            } else if (!(embeddingRule instanceof ActivityRule)) {
                throw new IllegalArgumentException("Unsupported rule type");
            } else {
                translateActivityRule = translateActivityRule((ActivityRule) embeddingRule, predicateClassOrNull$window_release);
            }
            arrayList.add((androidx.window.extensions.embedding.EmbeddingRule) translateActivityRule);
        }
        return CollectionsKt.toSet(arrayList);
    }
}
