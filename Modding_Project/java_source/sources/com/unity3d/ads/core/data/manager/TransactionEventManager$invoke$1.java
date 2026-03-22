package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.data.model.exception.TransactionException;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.services.store.StoreMonitor;
import com.unity3d.services.store.gpbl.BillingResultResponseCode;
import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.PurchaseBridge;
import com.unity3d.services.store.gpbl.listeners.BillingInitializationListener;
import com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1", f = "TransactionEventManager.kt", i = {}, l = {123}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nTransactionEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionEventManager.kt\ncom/unity3d/ads/core/data/manager/TransactionEventManager$invoke$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,122:1\n314#2,11:123\n*S KotlinDebug\n*F\n+ 1 TransactionEventManager.kt\ncom/unity3d/ads/core/data/manager/TransactionEventManager$invoke$1\n*L\n39#1:123,11\n*E\n"})
/* loaded from: classes6.dex */
public final class TransactionEventManager$invoke$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ TransactionEventManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransactionEventManager$invoke$1(TransactionEventManager transactionEventManager, Continuation<? super TransactionEventManager$invoke$1> continuation) {
        super(2, continuation);
        this.this$0 = transactionEventManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new TransactionEventManager$invoke$1(this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SendDiagnosticEvent sendDiagnosticEvent;
        StoreMonitor storeMonitor;
        StoreMonitor storeMonitor2;
        StoreMonitor storeMonitor3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
        } catch (Exception unused) {
            sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "billing_service_unavailable", null, null, null, null, null, 62, null);
        }
        if (i != 0) {
            if (i == 1) {
                TransactionEventManager transactionEventManager = (TransactionEventManager) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            storeMonitor = this.this$0.storeMonitor;
            if (!storeMonitor.isInitialized()) {
                final TransactionEventManager transactionEventManager2 = this.this$0;
                this.L$0 = transactionEventManager2;
                this.label = 1;
                final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(this), 1);
                cancellableContinuationImpl.initCancellability();
                storeMonitor2 = transactionEventManager2.storeMonitor;
                storeMonitor2.initialize(new BillingInitializationListener() { // from class: com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1$1$1
                    private final void tryResume() {
                        if (cancellableContinuationImpl.isActive()) {
                            CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl;
                            Result.Companion companion = Result.Companion;
                            cancellableContinuation.resumeWith(Result.m438constructorimpl(Unit.INSTANCE));
                        }
                    }

                    private final void tryResumeWithException(Exception exc) {
                        if (cancellableContinuationImpl.isActive()) {
                            CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl;
                            Result.Companion companion = Result.Companion;
                            cancellableContinuation.resumeWith(Result.m438constructorimpl(ResultKt.createFailure(exc)));
                        }
                    }

                    @Override // com.unity3d.services.store.gpbl.listeners.BillingClientStateListener
                    public void onBillingServiceDisconnected() {
                        tryResumeWithException(new TransactionException("Billing service disconnected"));
                    }

                    @Override // com.unity3d.services.store.gpbl.listeners.BillingClientStateListener
                    public void onBillingSetupFinished(@NotNull BillingResultBridge billingResultBridge) {
                        if (billingResultBridge.getResponseCode() != BillingResultResponseCode.OK) {
                            tryResumeWithException(new TransactionException("Billing setup failed"));
                        } else {
                            tryResume();
                        }
                    }

                    @Override // com.unity3d.services.store.gpbl.listeners.BillingInitializationListener
                    public void onIsAlreadyInitialized() {
                        tryResume();
                    }

                    @Override // com.unity3d.services.store.gpbl.listeners.PurchaseUpdatedResponseListener
                    public void onPurchaseUpdated(@NotNull BillingResultBridge billingResultBridge, @Nullable List<? extends PurchaseBridge> list) {
                        transactionEventManager2.onPurchasesReceived(billingResultBridge, list);
                    }
                });
                Object result = cancellableContinuationImpl.getResult();
                if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(this);
                }
                if (result == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
        storeMonitor3 = this.this$0.storeMonitor;
        final TransactionEventManager transactionEventManager3 = this.this$0;
        storeMonitor3.getPurchases(42, "inapp", new PurchasesResponseListener() { // from class: com.unity3d.ads.core.data.manager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener
            public final void onPurchaseResponse(BillingResultBridge billingResultBridge, List list) {
                TransactionEventManager.access$onPurchasesReceived(TransactionEventManager.this, billingResultBridge, list);
            }
        });
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((TransactionEventManager$invoke$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
