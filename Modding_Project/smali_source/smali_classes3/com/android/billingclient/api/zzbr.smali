.class public final synthetic Lcom/android/billingclient/api/zzbr;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeResponseListener;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeParams;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzcc;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzcc;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzbr;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzcc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzbr;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeParams;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/billingclient/api/zzbr;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbr;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzcc;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzbr;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeParams;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/zzbr;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/zzcc;->Sssssssss(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
