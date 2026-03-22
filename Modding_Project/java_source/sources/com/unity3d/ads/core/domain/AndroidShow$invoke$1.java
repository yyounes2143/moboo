package com.unity3d.ads.core.domain;

import android.app.Activity;
import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.AdObjectState;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/unity3d/ads/core/data/model/ShowEvent;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1", f = "AndroidShow.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nAndroidShow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidShow.kt\ncom/unity3d/ads/core/domain/AndroidShow$invoke$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidShow$invoke$1 extends SuspendLambda implements Function2<FlowCollector<? super ShowEvent>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ AdObject $adObject;
    final /* synthetic */ UnityAdsShowOptions $showOptions;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AndroidShow this$0;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/unity3d/ads/core/data/model/ShowEvent;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1$2", f = "AndroidShow.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nAndroidShow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidShow.kt\ncom/unity3d/ads/core/domain/AndroidShow$invoke$1$2\n+ 2 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n*L\n1#1,73:1\n17#2:74\n8#2,14:75\n*S KotlinDebug\n*F\n+ 1 AndroidShow.kt\ncom/unity3d/ads/core/domain/AndroidShow$invoke$1$2\n*L\n37#1:74\n37#1:75,14\n*E\n"})
    /* renamed from: com.unity3d.ads.core.domain.AndroidShow$invoke$1$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<FlowCollector<? super ShowEvent>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ AdObject $ad;
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ UnityAdsShowOptions $showOptions;
        int label;
        final /* synthetic */ AndroidShow this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(AdObject adObject, AndroidShow androidShow, AdObject adObject2, Activity activity, UnityAdsShowOptions unityAdsShowOptions, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$ad = adObject;
            this.this$0 = androidShow;
            this.$adObject = adObject2;
            this.$activity = activity;
            this.$showOptions = unityAdsShowOptions;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass2(this.$ad, this.this$0, this.$adObject, this.$activity, this.$showOptions, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
            if (r1 == null) goto L20;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r14) {
            /*
                r13 = this;
                kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r0 = r13.label
                if (r0 != 0) goto Lb8
                kotlin.ResultKt.throwOnFailure(r14)
                com.unity3d.ads.core.data.model.AdObject r14 = r13.$ad
                com.unity3d.ads.core.domain.AndroidShow r0 = r13.this$0
                com.unity3d.ads.core.configuration.GameServerIdReader r0 = com.unity3d.ads.core.domain.AndroidShow.access$getGameServerIdReader$p(r0)
                com.unity3d.services.core.misc.JsonStorage r1 = r0.getJsonStorage()
                java.lang.String r2 = r0.getKey()
                java.lang.Object r1 = r1.get(r2)
                r2 = 0
                if (r1 == 0) goto L29
                boolean r3 = r1 instanceof java.lang.String
                if (r3 == 0) goto L26
                goto L27
            L26:
                r1 = r2
            L27:
                if (r1 != 0) goto L2a
            L29:
                r1 = r2
            L2a:
                com.unity3d.services.core.misc.JsonStorage r3 = r0.getJsonStorage()
                java.lang.String r4 = r0.getKey()
                java.lang.Object r3 = r3.get(r4)
                if (r3 == 0) goto L43
                com.unity3d.services.core.misc.JsonStorage r3 = r0.getJsonStorage()
                java.lang.String r0 = r0.getKey()
                r3.delete(r0)
            L43:
                java.lang.String r1 = (java.lang.String) r1
                r14.setPlayerServerId(r1)
                com.unity3d.ads.core.data.model.AdObject r14 = r13.$adObject
                kotlinx.coroutines.flow.MutableStateFlow r14 = r14.getState()
                com.unity3d.ads.core.data.model.AdObjectState r0 = com.unity3d.ads.core.data.model.AdObjectState.SHOWING
                r14.setValue(r0)
                com.unity3d.ads.core.domain.AndroidShow r14 = r13.this$0
                com.unity3d.ads.core.domain.SendDiagnosticEvent r3 = com.unity3d.ads.core.domain.AndroidShow.access$getSendDiagnosticEvent$p(r14)
                com.unity3d.ads.core.data.model.AdObject r8 = r13.$adObject
                r10 = 46
                r11 = 0
                java.lang.String r4 = "native_show_event_flow_started"
                r5 = 0
                r6 = 0
                r7 = 0
                r9 = 0
                com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r3, r4, r5, r6, r7, r8, r9, r10, r11)
                com.unity3d.ads.core.data.model.AdObject r14 = r13.$ad
                com.unity3d.ads.adplayer.AdPlayer r14 = r14.getAdPlayer()
                java.lang.ref.WeakReference r4 = new java.lang.ref.WeakReference
                android.app.Activity r0 = r13.$activity
                r4.<init>(r0)
                com.unity3d.ads.UnityAdsShowOptions r0 = r13.$showOptions
                if (r0 == 0) goto L82
                org.json.JSONObject r0 = r0.getData()
                if (r0 == 0) goto L82
                java.util.Map r2 = com.unity3d.ads.core.extensions.JSONObjectExtensionsKt.toBuiltInMap(r0)
            L82:
                r5 = r2
                com.unity3d.ads.core.data.model.AdObject r0 = r13.$ad
                boolean r7 = r0.isScarAd()
                com.unity3d.ads.core.data.model.AdObject r0 = r13.$ad
                java.lang.String r9 = r0.getScarAdString()
                com.unity3d.ads.core.data.model.AdObject r0 = r13.$ad
                java.lang.String r8 = r0.getScarQueryId()
                com.unity3d.ads.core.data.model.AdObject r0 = r13.$ad
                java.lang.String r10 = r0.getScarAdUnitId()
                com.unity3d.ads.core.data.model.AdObject r0 = r13.$ad
                boolean r11 = r0.isOfferwallAd()
                com.unity3d.ads.core.data.model.AdObject r0 = r13.$ad
                java.lang.String r12 = r0.getOfferwallPlacementName()
                com.unity3d.ads.core.data.model.AdObject r0 = r13.$ad
                java.lang.String r6 = r0.getPlacementId()
                com.unity3d.ads.adplayer.AndroidShowOptions r3 = new com.unity3d.ads.adplayer.AndroidShowOptions
                r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12)
                r14.show(r3)
                kotlin.Unit r14 = kotlin.Unit.INSTANCE
                return r14
            Lb8:
                java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r14.<init>(r0)
                throw r14
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidShow$invoke$1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull FlowCollector<? super ShowEvent> flowCollector, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/unity3d/ads/core/data/model/ShowEvent;", "it", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1$3", f = "AndroidShow.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.unity3d.ads.core.domain.AndroidShow$invoke$1$3  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ShowEvent>, Throwable, Continuation<? super Unit>, Object> {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ ByteString $opportunityId;
        int label;
        final /* synthetic */ AndroidShow this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(AndroidShow androidShow, AdObject adObject, ByteString byteString, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.this$0 = androidShow;
            this.$adObject = adObject;
            this.$opportunityId = byteString;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            SendDiagnosticEvent sendDiagnosticEvent;
            AdRepository adRepository;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_event_flow_completed", null, null, null, this.$adObject, null, 46, null);
                this.$adObject.getState().setValue(AdObjectState.COMPLETED);
                adRepository = this.this$0.adRepository;
                adRepository.removeAd(this.$opportunityId);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function3
        @Nullable
        public final Object invoke(@NotNull FlowCollector<? super ShowEvent> flowCollector, @Nullable Throwable th, @Nullable Continuation<? super Unit> continuation) {
            return new AnonymousClass3(this.this$0, this.$adObject, this.$opportunityId, continuation).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/unity3d/ads/core/data/model/ShowEvent;", "it"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1$4", f = "AndroidShow.kt", i = {0}, l = {59}, m = "invokeSuspend", n = {"it"}, s = {"L$0"})
    /* renamed from: com.unity3d.ads.core.domain.AndroidShow$invoke$1$4  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass4 extends SuspendLambda implements Function3<FlowCollector<? super ShowEvent>, ShowEvent, Continuation<? super Boolean>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        public AnonymousClass4(Continuation<? super AnonymousClass4> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            ShowEvent showEvent;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            boolean z = true;
            if (i != 0) {
                if (i == 1) {
                    showEvent = (ShowEvent) this.L$0;
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                ShowEvent showEvent2 = (ShowEvent) this.L$1;
                this.L$0 = showEvent2;
                this.label = 1;
                if (((FlowCollector) this.L$0).emit(showEvent2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                showEvent = showEvent2;
            }
            return Boxing.boxBoolean(((showEvent instanceof ShowEvent.Completed) || (showEvent instanceof ShowEvent.Error)) ? false : false);
        }

        @Override // kotlin.jvm.functions.Function3
        @Nullable
        public final Object invoke(@NotNull FlowCollector<? super ShowEvent> flowCollector, @NotNull ShowEvent showEvent, @Nullable Continuation<? super Boolean> continuation) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(continuation);
            anonymousClass4.L$0 = flowCollector;
            anonymousClass4.L$1 = showEvent;
            return anonymousClass4.invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidShow$invoke$1(AdObject adObject, AndroidShow androidShow, Activity activity, UnityAdsShowOptions unityAdsShowOptions, Continuation<? super AndroidShow$invoke$1> continuation) {
        super(2, continuation);
        this.$adObject = adObject;
        this.this$0 = androidShow;
        this.$activity = activity;
        this.$showOptions = unityAdsShowOptions;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        AndroidShow$invoke$1 androidShow$invoke$1 = new AndroidShow$invoke$1(this.$adObject, this.this$0, this.$activity, this.$showOptions, continuation);
        androidShow$invoke$1.L$0 = obj;
        return androidShow$invoke$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AdRepository adRepository;
        SendDiagnosticEvent sendDiagnosticEvent;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            final FlowCollector flowCollector = (FlowCollector) this.L$0;
            if (!this.$adObject.getOpportunityId().isEmpty()) {
                ByteString opportunityId = this.$adObject.getOpportunityId();
                adRepository = this.this$0.adRepository;
                AdObject ad = adRepository.getAd(opportunityId);
                if (ad != null) {
                    sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
                    SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_started_ad_viewer", null, null, null, this.$adObject, null, 46, null);
                    AdPlayer adPlayer = ad.getAdPlayer();
                    if (adPlayer != null) {
                        Flow transformWhile = FlowKt.transformWhile(FlowKt.onCompletion(FlowKt.onStart(adPlayer.getOnShowEvent(), new AnonymousClass2(ad, this.this$0, this.$adObject, this.$activity, this.$showOptions, null)), new AnonymousClass3(this.this$0, this.$adObject, opportunityId, null)), new AnonymousClass4(null));
                        final AndroidShow androidShow = this.this$0;
                        final AdObject adObject = this.$adObject;
                        FlowCollector flowCollector2 = new FlowCollector() { // from class: com.unity3d.ads.core.domain.AndroidShow$invoke$1.5
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                                return emit((ShowEvent) obj2, (Continuation<? super Unit>) continuation);
                            }

                            @Nullable
                            public final Object emit(@NotNull ShowEvent showEvent, @NotNull Continuation<? super Unit> continuation) {
                                SendDiagnosticEvent sendDiagnosticEvent2;
                                sendDiagnosticEvent2 = AndroidShow.this.sendDiagnosticEvent;
                                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent2, "native_show_event_flow_collected", null, MapsKt.mapOf(TuplesKt.to("event", showEvent.getClass().getSimpleName())), null, adObject, null, 42, null);
                                Object emit = flowCollector.emit(showEvent, continuation);
                                return emit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? emit : Unit.INSTANCE;
                            }
                        };
                        this.label = 1;
                        if (transformWhile.collect(flowCollector2, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        throw new IllegalStateException("No adPlayer associated with ad");
                    }
                } else {
                    throw new IllegalStateException("No ad associated with opportunityId");
                }
            } else {
                throw new IllegalArgumentException("No opportunityId");
            }
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull FlowCollector<? super ShowEvent> flowCollector, @Nullable Continuation<? super Unit> continuation) {
        return ((AndroidShow$invoke$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
