package gatewayprotocol.v1;

import com.applovin.sdk.AppLovinEventTypes;
import com.google.protobuf.ByteString;
import com.google.protobuf.Timestamp;
import com.google.protobuf.kotlin.ProtoDslMarker;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/TransactionDataKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class TransactionDataKt {
    @NotNull
    public static final TransactionDataKt INSTANCE = new TransactionDataKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 >2\u00020\u0001:\u0001>B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u00100\u001a\u000201H\u0001J\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u000203J\u0006\u00105\u001a\u000203J\u0006\u00106\u001a\u000203J\u0006\u00107\u001a\u000203J\u0006\u00108\u001a\u000203J\u0006\u00109\u001a\u000203J\u0006\u0010:\u001a\u000203J\u0006\u0010;\u001a\u00020<J\u0006\u0010=\u001a\u00020<R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R$\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\u000f\"\u0004\b \u0010\u0011R$\u0010!\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u0006?"}, d2 = {"Lgatewayprotocol/v1/TransactionDataKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;", "(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", "eventId", "getEventId", "()Lcom/google/protobuf/ByteString;", "setEventId", "(Lcom/google/protobuf/ByteString;)V", "", AppLovinEventTypes.USER_VIEWED_PRODUCT, "getProduct", "()Ljava/lang/String;", "setProduct", "(Ljava/lang/String;)V", InAppPurchaseMetaData.KEY_PRODUCT_ID, "getProductId", "setProductId", "receipt", "getReceipt", "setReceipt", "Lcom/google/protobuf/Timestamp;", CampaignEx.JSON_KEY_TIMESTAMP, "getTimestamp", "()Lcom/google/protobuf/Timestamp;", "setTimestamp", "(Lcom/google/protobuf/Timestamp;)V", "transaction", "getTransaction", "setTransaction", "transactionId", "getTransactionId", "setTransactionId", "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;", "transactionState", "getTransactionState", "()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;", "setTransactionState", "(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;)V", "", "transactionStateValue", "getTransactionStateValue", "()I", "setTransactionStateValue", "(I)V", "_build", "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;", "clearEventId", "", "clearProduct", "clearProductId", "clearReceipt", "clearTimestamp", "clearTransaction", "clearTransactionId", "clearTransactionState", "hasReceipt", "", "hasTimestamp", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final TransactionEventRequestOuterClass.TransactionData.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/TransactionDataKt$Dsl;", "builder", "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(TransactionEventRequestOuterClass.TransactionData.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(TransactionEventRequestOuterClass.TransactionData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ TransactionEventRequestOuterClass.TransactionData _build() {
            return this._builder.build();
        }

        public final void clearEventId() {
            this._builder.clearEventId();
        }

        public final void clearProduct() {
            this._builder.clearProduct();
        }

        public final void clearProductId() {
            this._builder.clearProductId();
        }

        public final void clearReceipt() {
            this._builder.clearReceipt();
        }

        public final void clearTimestamp() {
            this._builder.clearTimestamp();
        }

        public final void clearTransaction() {
            this._builder.clearTransaction();
        }

        public final void clearTransactionId() {
            this._builder.clearTransactionId();
        }

        public final void clearTransactionState() {
            this._builder.clearTransactionState();
        }

        @JvmName(name = "getEventId")
        @NotNull
        public final ByteString getEventId() {
            return this._builder.getEventId();
        }

        @JvmName(name = "getProduct")
        @NotNull
        public final String getProduct() {
            return this._builder.getProduct();
        }

        @JvmName(name = "getProductId")
        @NotNull
        public final String getProductId() {
            return this._builder.getProductId();
        }

        @JvmName(name = "getReceipt")
        @NotNull
        public final String getReceipt() {
            return this._builder.getReceipt();
        }

        @JvmName(name = "getTimestamp")
        @NotNull
        public final Timestamp getTimestamp() {
            return this._builder.getTimestamp();
        }

        @JvmName(name = "getTransaction")
        @NotNull
        public final String getTransaction() {
            return this._builder.getTransaction();
        }

        @JvmName(name = "getTransactionId")
        @NotNull
        public final String getTransactionId() {
            return this._builder.getTransactionId();
        }

        @JvmName(name = "getTransactionState")
        @NotNull
        public final TransactionEventRequestOuterClass.TransactionState getTransactionState() {
            return this._builder.getTransactionState();
        }

        @JvmName(name = "getTransactionStateValue")
        public final int getTransactionStateValue() {
            return this._builder.getTransactionStateValue();
        }

        public final boolean hasReceipt() {
            return this._builder.hasReceipt();
        }

        public final boolean hasTimestamp() {
            return this._builder.hasTimestamp();
        }

        @JvmName(name = "setEventId")
        public final void setEventId(@NotNull ByteString byteString) {
            this._builder.setEventId(byteString);
        }

        @JvmName(name = "setProduct")
        public final void setProduct(@NotNull String str) {
            this._builder.setProduct(str);
        }

        @JvmName(name = "setProductId")
        public final void setProductId(@NotNull String str) {
            this._builder.setProductId(str);
        }

        @JvmName(name = "setReceipt")
        public final void setReceipt(@NotNull String str) {
            this._builder.setReceipt(str);
        }

        @JvmName(name = "setTimestamp")
        public final void setTimestamp(@NotNull Timestamp timestamp) {
            this._builder.setTimestamp(timestamp);
        }

        @JvmName(name = "setTransaction")
        public final void setTransaction(@NotNull String str) {
            this._builder.setTransaction(str);
        }

        @JvmName(name = "setTransactionId")
        public final void setTransactionId(@NotNull String str) {
            this._builder.setTransactionId(str);
        }

        @JvmName(name = "setTransactionState")
        public final void setTransactionState(@NotNull TransactionEventRequestOuterClass.TransactionState transactionState) {
            this._builder.setTransactionState(transactionState);
        }

        @JvmName(name = "setTransactionStateValue")
        public final void setTransactionStateValue(int i) {
            this._builder.setTransactionStateValue(i);
        }

        private Dsl(TransactionEventRequestOuterClass.TransactionData.Builder builder) {
            this._builder = builder;
        }
    }

    private TransactionDataKt() {
    }
}
