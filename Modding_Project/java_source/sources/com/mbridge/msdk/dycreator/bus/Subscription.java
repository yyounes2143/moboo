package com.mbridge.msdk.dycreator.bus;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class Subscription {

    /* renamed from: a  reason: collision with root package name */
    final Object f8903a;
    final SubscriberMethod b;

    public Subscription(Object obj, SubscriberMethod subscriberMethod) {
        this.f8903a = obj;
        this.b = subscriberMethod;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Subscription) {
            Subscription subscription = (Subscription) obj;
            if (this.f8903a == subscription.f8903a && this.b.equals(subscription.b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f8903a.hashCode() + this.b.d.hashCode();
    }
}
