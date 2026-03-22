package com.google.android.datatransport;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class AutoValue_Event<T> extends Event<T> {
    private final Integer code;
    private final EventContext eventContext;
    private final T payload;
    private final Priority priority;
    private final ProductData productData;

    public AutoValue_Event(@Nullable Integer num, T t, Priority priority, @Nullable ProductData productData, @Nullable EventContext eventContext) {
        this.code = num;
        if (t != null) {
            this.payload = t;
            if (priority != null) {
                this.priority = priority;
                this.productData = productData;
                this.eventContext = eventContext;
                return;
            }
            throw new NullPointerException("Null priority");
        }
        throw new NullPointerException("Null payload");
    }

    public boolean equals(Object obj) {
        ProductData productData;
        EventContext eventContext;
        if (obj == this) {
            return true;
        }
        if (obj instanceof Event) {
            Event event = (Event) obj;
            Integer num = this.code;
            if (num != null ? num.equals(event.getCode()) : event.getCode() == null) {
                if (this.payload.equals(event.getPayload()) && this.priority.equals(event.getPriority()) && ((productData = this.productData) != null ? productData.equals(event.getProductData()) : event.getProductData() == null) && ((eventContext = this.eventContext) != null ? eventContext.equals(event.getEventContext()) : event.getEventContext() == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.Event
    @Nullable
    public Integer getCode() {
        return this.code;
    }

    @Override // com.google.android.datatransport.Event
    @Nullable
    public EventContext getEventContext() {
        return this.eventContext;
    }

    @Override // com.google.android.datatransport.Event
    public T getPayload() {
        return this.payload;
    }

    @Override // com.google.android.datatransport.Event
    public Priority getPriority() {
        return this.priority;
    }

    @Override // com.google.android.datatransport.Event
    @Nullable
    public ProductData getProductData() {
        return this.productData;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Integer num = this.code;
        int i = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int hashCode3 = (((((hashCode ^ 1000003) * 1000003) ^ this.payload.hashCode()) * 1000003) ^ this.priority.hashCode()) * 1000003;
        ProductData productData = this.productData;
        if (productData == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = productData.hashCode();
        }
        int i2 = (hashCode3 ^ hashCode2) * 1000003;
        EventContext eventContext = this.eventContext;
        if (eventContext != null) {
            i = eventContext.hashCode();
        }
        return i2 ^ i;
    }

    public String toString() {
        return "Event{code=" + this.code + ", payload=" + this.payload + ", priority=" + this.priority + ", productData=" + this.productData + ", eventContext=" + this.eventContext + "}";
    }
}
