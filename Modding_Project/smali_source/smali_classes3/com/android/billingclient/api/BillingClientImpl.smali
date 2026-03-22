.class Lcom/android/billingclient/api/BillingClientImpl;
.super Lcom/android/billingclient/api/BillingClient;
.source "Proguard"


# instance fields
.field public final Www:Ljava/lang/Long;

.field public volatile Wwww:Lcom/google/android/gms/internal/play_billing/zzev;

.field public Wwwww:Ljava/util/concurrent/ExecutorService;

.field public Wwwwww:Z

.field public Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwww:Z

.field public Wwwwwwwww:Z

.field public Wwwwwwwwww:Z

.field public Wwwwwwwwwww:Z

.field public Wwwwwwwwwwww:Z

.field public Wwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public volatile Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzba;

.field public volatile Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

.field public volatile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public volatile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;)V
    .locals 7
    .param p6    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/android/billingclient/api/zzch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    const/4 p5, 0x0

    iput p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    new-instance p7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p8

    invoke-direct {p7, p8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p7, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    iput p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    new-instance p5, Ljava/util/Random;

    .line 2
    invoke-direct {p5}, Ljava/util/Random;-><init>()V

    invoke-virtual {p5}, Ljava/util/Random;->nextLong()J

    move-result-wide p7

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    move-object v5, p4

    move-object v4, p6

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/UserChoiceBillingListener;Ljava/lang/String;Lcom/android/billingclient/api/zzch;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/billingclient/api/zzch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    new-instance p1, Ljava/util/Random;

    .line 5
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 6
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkk()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 10
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzku;

    .line 13
    new-instance p3, Lcom/android/billingclient/api/zzcl;

    invoke-direct {p3, p1, p2}, Lcom/android/billingclient/api/zzcl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/zzch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 32
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkk()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p3

    move-object v3, p4

    move-object v6, p5

    .line 33
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/billingclient/api/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/zzch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 28
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkk()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    new-instance p5, Landroid/os/Handler;

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p5, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    new-instance p1, Ljava/util/Random;

    .line 30
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    const/4 p7, 0x0

    const/4 p5, 0x0

    move-object p1, p4

    move-object p4, p2

    move-object p2, p3

    move-object p3, p1

    move-object p1, p0

    .line 31
    invoke-virtual/range {p1 .. p7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/zzb;Ljava/lang/String;Lcom/android/billingclient/api/zzch;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/billingclient/api/zzch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    new-instance p1, Ljava/util/Random;

    .line 16
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 17
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkk()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 18
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    move-result-object p3

    .line 20
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkk()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 21
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzku;

    .line 24
    new-instance p4, Lcom/android/billingclient/api/zzcl;

    invoke-direct {p4, p1, p3}, Lcom/android/billingclient/api/zzcl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    const-string p1, "BillingClient"

    const-string p3, "Billing client should have a valid listener but the provided is null."

    .line 25
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/zzn;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzn;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzch;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzn;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic IIlllllll(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O000000(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static bridge synthetic IIllllllll(Lcom/android/billingclient/api/BillingClientImpl;IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p2, 0x6

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static bridge synthetic IIlllllllll(Lcom/android/billingclient/api/BillingClientImpl;IILcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 1
    const/4 p2, 0x6

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static bridge synthetic Il(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 0

    .line 1
    const/16 p3, 0x49

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000000(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static bridge synthetic Ill(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 0

    .line 1
    const/16 p3, 0x61

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->IIll(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static bridge synthetic Illl(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;I)Lcom/android/billingclient/api/zzcv;
    .locals 0

    .line 1
    const/16 p2, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllllllllll(Ljava/lang/String;I)Lcom/android/billingclient/api/zzcv;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static bridge synthetic Illll(Lcom/android/billingclient/api/BillingClientImpl;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public static bridge synthetic Illlll(Lcom/android/billingclient/api/BillingClientImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwww:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic Illllllllllllllllllll(Lcom/android/billingclient/api/BillingClientImpl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkk()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Kkkkk(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "CLOSED"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "CONNECTED"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const-string p0, "CONNECTING"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const-string p0, "DISCONNECTED"

    .line 19
    .line 20
    return-object p0
.end method

.method public static Kkkkkkkkkkkkkkk()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/android/billingclient/ktx/BuildConfig;

    .line 2
    .line 3
    const-string v1, "VERSION_NAME"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    const-string v0, "7.1.1"

    .line 18
    .line 19
    return-object v0
.end method

.method public static bridge synthetic Kkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic Kkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkk(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic Kkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkk(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic Kkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Kkkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Kkkkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Kkkkkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Kkkkkkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Kkkkkkkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic O0(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzn;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic O00(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllllll()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic O00000(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic OO00(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic OO00000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkk()Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic OO0000000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic OO00000000(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)Lcom/android/billingclient/api/zzbk;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->IIlllll(Ljava/lang/String;)Lcom/android/billingclient/api/zzbk;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic QQOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic QQOOOOOOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic QQOOOOOOOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic Www(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return-void
.end method

.method public static Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 2
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    long-to-double p1, p1

    .line 6
    new-instance p5, Lcom/android/billingclient/api/zzaf;

    .line 7
    .line 8
    invoke-direct {p5, p0, p3}, Lcom/android/billingclient/api/zzaf;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr p1, v0

    .line 17
    double-to-long p1, p1

    .line 18
    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string p1, "BillingClient"

    .line 24
    .line 25
    const-string p2, "Async task throws exception!"

    .line 26
    .line 27
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    move-object p3, p0

    .line 2
    move-object p0, p1

    .line 3
    const-wide/16 p1, 0x7530

    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    move-object v0, p5

    .line 10
    move-object p5, p3

    .line 11
    move-object p3, p4

    .line 12
    move-object p4, v0

    .line 13
    invoke-static/range {p0 .. p5}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final IIl(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 2
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "getBillingConfig got an exception."

    .line 4
    .line 5
    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/BillingConfigResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final IIll(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final IIllll()Lcom/android/billingclient/api/BillingResult;
    .locals 3

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "Service connection is valid. No need to re-initialize."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzc()Lcom/google/android/gms/internal/play_billing/zzkb;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x6

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzkb;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzkb;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlx;->zzc()Lcom/google/android/gms/internal/play_billing/zzlv;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzlv;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzlv;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzkb;->zzm(Lcom/google/android/gms/internal/play_billing/zzlv;)Lcom/google/android/gms/internal/play_billing/zzkb;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkk(Lcom/google/android/gms/internal/play_billing/zzkd;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 37
    .line 38
    return-object v0
.end method

.method public final IIlllll(Ljava/lang/String;)Lcom/android/billingclient/api/zzbk;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Querying purchase history, item type: "

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "BillingClient"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 24
    .line 25
    iget-boolean v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwww:Z

    .line 26
    .line 27
    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/android/billingclient/api/PendingPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/android/billingclient/api/PendingPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-object v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 40
    .line 41
    move-object v7, v6

    .line 42
    iget-object v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zze;->zzd(ZZZZLjava/lang/String;J)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    const/4 v2, 0x0

    .line 53
    move-object v13, v2

    .line 54
    :cond_0
    iget-boolean v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    const-string v0, "BillingClient"

    .line 59
    .line 60
    const-string v3, "getPurchaseHistory is not supported on current device"

    .line 61
    .line 62
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/android/billingclient/api/zzbk;

    .line 66
    .line 67
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 68
    .line 69
    invoke-direct {v0, v3, v2}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_1
    const/16 v3, 0x3b

    .line 74
    .line 75
    :try_start_0
    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 76
    .line 77
    monitor-enter v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 79
    .line 80
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    if-nez v9, :cond_2

    .line 82
    .line 83
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 84
    .line 85
    const-string v4, "Service reset to null"

    .line 86
    .line 87
    const/16 v5, 0x77

    .line 88
    .line 89
    invoke-virtual {v1, v0, v5, v4, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Kkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbk;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :catch_1
    move-exception v0

    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_2
    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    const/4 v10, 0x6

    .line 107
    move-object/from16 v12, p1

    .line 108
    .line 109
    invoke-interface/range {v9 .. v14}, Lcom/google/android/gms/internal/play_billing/zzan;->zzh(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object v3
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    const-string v4, "BillingClient"

    .line 114
    .line 115
    const-string v5, "getPurchaseHistory()"

    .line 116
    .line 117
    invoke-static {v3, v4, v5}, Lcom/android/billingclient/api/zzcy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/zzcx;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lcom/android/billingclient/api/zzcx;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    sget-object v6, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 126
    .line 127
    const/16 v7, 0xb

    .line 128
    .line 129
    if-eq v5, v6, :cond_3

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/android/billingclient/api/zzcx;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {v1, v0, v7, v5}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lcom/android/billingclient/api/zzbk;

    .line 139
    .line 140
    invoke-direct {v0, v5, v2}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_3
    const-string v4, "INAPP_PURCHASE_ITEM_LIST"

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const-string v5, "INAPP_PURCHASE_DATA_LIST"

    .line 151
    .line 152
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    const-string v6, "INAPP_DATA_SIGNATURE_LIST"

    .line 157
    .line 158
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    const/4 v8, 0x0

    .line 163
    move v9, v8

    .line 164
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-ge v8, v10, :cond_5

    .line 169
    .line 170
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    check-cast v10, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    check-cast v11, Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    check-cast v12, Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    const-string v13, "Purchase record found for sku : "

    .line 193
    .line 194
    const-string v15, "BillingClient"

    .line 195
    .line 196
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    invoke-static {v15, v12}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :try_start_3
    new-instance v12, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 204
    .line 205
    invoke-direct {v12, v10, v11}, Lcom/android/billingclient/api/PurchaseHistoryRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 206
    .line 207
    .line 208
    invoke-virtual {v12}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-eqz v10, :cond_4

    .line 217
    .line 218
    const-string v9, "BillingClient"

    .line 219
    .line 220
    const-string v10, "BUG: empty/null token!"

    .line 221
    .line 222
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const/4 v9, 0x1

    .line 226
    :cond_4
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    add-int/lit8 v8, v8, 0x1

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :catch_2
    move-exception v0

    .line 233
    const-string v2, "Got an exception trying to decode the purchase!"

    .line 234
    .line 235
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 236
    .line 237
    const/16 v4, 0x33

    .line 238
    .line 239
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbk;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    return-object v0

    .line 244
    :cond_5
    if-eqz v9, :cond_6

    .line 245
    .line 246
    const/16 v4, 0x1a

    .line 247
    .line 248
    sget-object v5, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 249
    .line 250
    invoke-virtual {v1, v4, v7, v5}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 251
    .line 252
    .line 253
    :cond_6
    const-string v4, "INAPP_CONTINUATION_TOKEN"

    .line 254
    .line 255
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    const-string v4, "Continuation token: "

    .line 264
    .line 265
    const-string v5, "BillingClient"

    .line 266
    .line 267
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_0

    .line 279
    .line 280
    new-instance v2, Lcom/android/billingclient/api/zzbk;

    .line 281
    .line 282
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 283
    .line 284
    invoke-direct {v2, v3, v0}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 285
    .line 286
    .line 287
    return-object v2

    .line 288
    :catchall_0
    move-exception v0

    .line 289
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 291
    :goto_1
    const-string v2, "Got exception trying to get purchase history"

    .line 292
    .line 293
    sget-object v4, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 294
    .line 295
    invoke-virtual {v1, v4, v3, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbk;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    return-object v0

    .line 300
    :goto_2
    const-string v2, "Got exception trying to get purchase history"

    .line 301
    .line 302
    sget-object v4, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 303
    .line 304
    invoke-virtual {v1, v4, v3, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbk;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    return-object v0
.end method

.method public final IIllllll()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final synthetic Illllll(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->IIll(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic Illlllll(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000000(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic Illllllll(Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic Illlllllll(Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/PurchasesResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final synthetic Illllllllll(Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/16 v2, 0xb

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic Illlllllllll(Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final synthetic Illllllllllll(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllll(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic Illlllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic Illllllllllllll(Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/16 v2, 0xd

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic Illlllllllllllll(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllll(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic Illllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic Illlllllllllllllll(Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p1, v0, p2}, Lcom/android/billingclient/api/ConsumeResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic Illllllllllllllllll(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzn;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzn;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzn;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzn;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p1, "BillingClient"

    .line 21
    .line 22
    const-string v0, "No valid listener is set in BroadcastManager"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final synthetic Illlllllllllllllllll(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final Illlllllllllllllllllll(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final Illllllllllllllllllllll(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/ExternalOfferReportingDetails;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final Illlllllllllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final Illllllllllllllllllllllll(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p6    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-static {v0, p5, p6}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/4 p5, 0x4

    .line 7
    invoke-static {p6}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p6

    .line 11
    invoke-virtual {p0, p4, p5, p3, p6}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p3, p2}, Lcom/android/billingclient/api/ConsumeResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final Illlllllllllllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final Illllllllllllllllllllllllll(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 2
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "Error in acknowledge purchase!"

    .line 4
    .line 5
    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Illlllllllllllllllllllllllll(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdc;
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/16 p3, 0x8

    .line 7
    .line 8
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lcom/android/billingclient/api/zzdc;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p4, 0x0

    .line 26
    invoke-direct {p2, p3, p1, p4}, Lcom/android/billingclient/api/zzdc;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final Illllllllllllllllllllllllllll(Ljava/lang/String;I)Lcom/android/billingclient/api/zzcv;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Querying owned items, item type: "

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "BillingClient"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 24
    .line 25
    iget-boolean v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwww:Z

    .line 26
    .line 27
    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/android/billingclient/api/PendingPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/android/billingclient/api/PendingPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-object v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 40
    .line 41
    move-object v7, v6

    .line 42
    iget-object v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zze;->zzd(ZZZZLjava/lang/String;J)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    const/4 v2, 0x0

    .line 53
    move-object v13, v2

    .line 54
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 58
    .line 59
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    if-nez v9, :cond_1

    .line 61
    .line 62
    :try_start_2
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 63
    .line 64
    const-string v5, "Service has been reset to null"

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    const/16 v2, 0x9

    .line 68
    .line 69
    const/16 v4, 0x77

    .line 70
    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->Kk(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    move-object v6, v0

    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :catch_1
    move-exception v0

    .line 81
    move-object v6, v0

    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_1
    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 85
    .line 86
    const/16 v3, 0x9

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwww:Z

    .line 92
    .line 93
    if-eq v4, v2, :cond_2

    .line 94
    .line 95
    move v10, v3

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const/16 v2, 0x13

    .line 98
    .line 99
    move v10, v2

    .line 100
    :goto_0
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    move-object/from16 v12, p1

    .line 107
    .line 108
    invoke-interface/range {v9 .. v14}, Lcom/google/android/gms/internal/play_billing/zzan;->zzj(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    move-object/from16 v12, p1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const/4 v5, 0x3

    .line 122
    move-object/from16 v12, p1

    .line 123
    .line 124
    invoke-interface {v9, v5, v2, v12, v13}, Lcom/google/android/gms/internal/play_billing/zzan;->zzi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    :goto_1
    const-string v5, "BillingClient"

    .line 129
    .line 130
    const-string v6, "getPurchase()"

    .line 131
    .line 132
    invoke-static {v2, v5, v6}, Lcom/android/billingclient/api/zzcy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/zzcx;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    move v6, v3

    .line 137
    invoke-virtual {v5}, Lcom/android/billingclient/api/zzcx;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    sget-object v7, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 142
    .line 143
    if-eq v3, v7, :cond_4

    .line 144
    .line 145
    invoke-virtual {v5}, Lcom/android/billingclient/api/zzcx;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    const-string v5, "Purchase bundle invalid"

    .line 150
    .line 151
    const/4 v6, 0x0

    .line 152
    const/16 v2, 0x9

    .line 153
    .line 154
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->Kk(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    return-object v0

    .line 159
    :cond_4
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    .line 160
    .line 161
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    .line 172
    .line 173
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    const/4 v7, 0x0

    .line 178
    move v8, v7

    .line 179
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-ge v7, v9, :cond_6

    .line 184
    .line 185
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    check-cast v9, Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    check-cast v10, Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    check-cast v11, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    const-string v13, "Sku is owned: "

    .line 208
    .line 209
    const-string v15, "BillingClient"

    .line 210
    .line 211
    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :try_start_3
    new-instance v11, Lcom/android/billingclient/api/Purchase;

    .line 219
    .line 220
    invoke-direct {v11, v9, v10}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 221
    .line 222
    .line 223
    invoke-virtual {v11}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_5

    .line 232
    .line 233
    const-string v8, "BillingClient"

    .line 234
    .line 235
    const-string v9, "BUG: empty/null token!"

    .line 236
    .line 237
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    move v8, v4

    .line 241
    :cond_5
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    add-int/lit8 v7, v7, 0x1

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :catch_2
    move-exception v0

    .line 248
    move-object v6, v0

    .line 249
    const-string v5, "Got an exception trying to decode the purchase!"

    .line 250
    .line 251
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 252
    .line 253
    const/16 v4, 0x33

    .line 254
    .line 255
    const/16 v2, 0x9

    .line 256
    .line 257
    move-object/from16 v1, p0

    .line 258
    .line 259
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->Kk(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    return-object v0

    .line 264
    :cond_6
    move-object/from16 v1, p0

    .line 265
    .line 266
    if-eqz v8, :cond_7

    .line 267
    .line 268
    const/16 v3, 0x1a

    .line 269
    .line 270
    sget-object v4, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 271
    .line 272
    invoke-virtual {v1, v3, v6, v4}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 273
    .line 274
    .line 275
    :cond_7
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    .line 276
    .line 277
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    const-string v3, "Continuation token: "

    .line 286
    .line 287
    const-string v4, "BillingClient"

    .line 288
    .line 289
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_0

    .line 301
    .line 302
    new-instance v2, Lcom/android/billingclient/api/zzcv;

    .line 303
    .line 304
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 305
    .line 306
    invoke-direct {v2, v3, v0}, Lcom/android/billingclient/api/zzcv;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 307
    .line 308
    .line 309
    return-object v2

    .line 310
    :catchall_0
    move-exception v0

    .line 311
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 313
    :goto_3
    const-string v5, "Got exception trying to get purchases try to reconnect"

    .line 314
    .line 315
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 316
    .line 317
    const/16 v4, 0x34

    .line 318
    .line 319
    const/16 v2, 0x9

    .line 320
    .line 321
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->Kk(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    return-object v0

    .line 326
    :goto_4
    const-string v5, "Got exception trying to get purchases try to reconnect"

    .line 327
    .line 328
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 329
    .line 330
    const/16 v4, 0x34

    .line 331
    .line 332
    const/16 v2, 0x9

    .line 333
    .line 334
    move-object/from16 v1, p0

    .line 335
    .line 336
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->Kk(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    return-object v0
.end method

.method public final Kk(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;
    .locals 1
    .param p5    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 p1, 0x9

    .line 2
    .line 3
    invoke-static {p5}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "BillingClient"

    .line 11
    .line 12
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/android/billingclient/api/zzcv;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {p1, p2, p3}, Lcom/android/billingclient/api/zzcv;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public final Kkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbk;
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/16 p3, 0xb

    .line 7
    .line 8
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lcom/android/billingclient/api/zzbk;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {p2, p1, p3}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public final Kkkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x7

    .line 7
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lcom/android/billingclient/api/zzbj;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p3, p1, p4}, Lcom/android/billingclient/api/zzbj;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    return-object p2
.end method

.method public final Kkkkkk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final Kkkkkkk()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzba;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_2
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzba;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :catchall_1
    move-exception v2

    .line 24
    :try_start_3
    const-string v3, "BillingClient"

    .line 25
    .line 26
    const-string v4, "There was an exception while unbinding service!"

    .line 27
    .line 28
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    .line 30
    .line 31
    :try_start_4
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzba;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_2
    move-exception v2

    .line 37
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzba;

    .line 40
    .line 41
    throw v2

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    throw v1
.end method

.method public final Kkkkkkkk(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "BillingClient"

    .line 14
    .line 15
    iget v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    invoke-static {v2}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkk(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkk(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v5, "Setting clientState from "

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " to "

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method public final Kkkkkkkkk(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string p1, "BillingClient"

    .line 30
    .line 31
    const-string v0, "Please provide a valid product type."

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 37
    .line 38
    const/16 v0, 0x32

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance v2, Lcom/android/billingclient/api/zzat;

    .line 52
    .line 53
    invoke-direct {v2, p0, p1, p2}, Lcom/android/billingclient/api/zzat;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 54
    .line 55
    .line 56
    new-instance v5, Lcom/android/billingclient/api/zzac;

    .line 57
    .line 58
    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzac;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllllll()Landroid/os/Handler;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-wide/16 v3, 0x7530

    .line 70
    .line 71
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkk()Lcom/android/billingclient/api/BillingResult;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/16 v0, 0x19

    .line 82
    .line 83
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public final Kkkkkkkkkk(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0xb

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v3, Lcom/android/billingclient/api/zzau;

    .line 21
    .line 22
    invoke-direct {v3, p0, p1, p2}, Lcom/android/billingclient/api/zzau;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 23
    .line 24
    .line 25
    new-instance v6, Lcom/android/billingclient/api/zzal;

    .line 26
    .line 27
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/zzal;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllllll()Landroid/os/Handler;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    const-wide/16 v4, 0x7530

    .line 39
    .line 40
    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkk()Lcom/android/billingclient/api/BillingResult;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/16 v0, 0x19

    .line 51
    .line 52
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final Kkkkkkkkkkk(Lcom/google/android/gms/internal/play_billing/zzkd;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzkd;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    const-string v0, "BillingClient"

    .line 11
    .line 12
    const-string v1, "Unable to log."

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final Kkkkkkkkkkkk(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzjz;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    const-string v0, "BillingClient"

    .line 11
    .line 12
    const-string v1, "Unable to log."

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final Kkkkkkkkkkkkk(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    :try_start_0
    const-string p1, "BillingClient"

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "Consuming purchase with token: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 30
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 31
    .line 32
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    :try_start_2
    sget-object v4, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 36
    .line 37
    const-string v6, "Service has been reset to null."
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/16 v5, 0x77

    .line 41
    .line 42
    move-object v1, p0

    .line 43
    move-object v2, p2

    .line 44
    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllllll(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :goto_0
    move-object p1, v0

    .line 50
    move-object v7, p1

    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :catch_1
    move-exception v0

    .line 54
    :goto_1
    move-object p1, v0

    .line 55
    move-object v7, p1

    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :catch_2
    move-exception v0

    .line 59
    move-object v1, p0

    .line 60
    :goto_2
    move-object v2, p2

    .line 61
    goto :goto_0

    .line 62
    :catch_3
    move-exception v0

    .line 63
    move-object v1, p0

    .line 64
    :goto_3
    move-object v2, p2

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    move-object v1, p0

    .line 67
    move-object v2, p2

    .line 68
    iget-boolean p1, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object p1, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-boolean p2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 79
    .line 80
    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    new-instance v7, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 91
    .line 92
    .line 93
    if-eqz p2, :cond_1

    .line 94
    .line 95
    invoke-static {v7, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 96
    .line 97
    .line 98
    :cond_1
    const/16 p2, 0x9

    .line 99
    .line 100
    invoke-interface {v0, p2, p1, v3, v7}, Lcom/google/android/gms/internal/play_billing/zzan;->zze(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string p2, "RESPONSE_CODE"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    const-string v0, "BillingClient"

    .line 111
    .line 112
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    goto :goto_4

    .line 117
    :cond_2
    iget-object p1, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const/4 p2, 0x3

    .line 124
    invoke-interface {v0, p2, p1, v3}, Lcom/google/android/gms/internal/play_billing/zzan;->zza(ILjava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    const-string p1, ""

    .line 129
    .line 130
    :goto_4
    invoke-static {p2, p1}, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    if-nez p2, :cond_3

    .line 135
    .line 136
    const-string p1, "BillingClient"

    .line 137
    .line 138
    const-string p2, "Successfully consumed purchase."

    .line 139
    .line 140
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v2, v4, v3}, Lcom/android/billingclient/api/ConsumeResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v0, "Error consuming purchase with token. Response code: "

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const/4 v7, 0x0

    .line 165
    const/16 v5, 0x17

    .line 166
    .line 167
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllllll(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :catchall_0
    move-exception v0

    .line 172
    move-object v2, p2

    .line 173
    :goto_5
    move-object p2, v0

    .line 174
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    :try_start_5
    throw p2
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 176
    :catchall_1
    move-exception v0

    .line 177
    goto :goto_5

    .line 178
    :catch_4
    move-exception v0

    .line 179
    goto :goto_2

    .line 180
    :catch_5
    move-exception v0

    .line 181
    goto :goto_3

    .line 182
    :goto_6
    const-string v6, "Error consuming purchase!"

    .line 183
    .line 184
    sget-object v4, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 185
    .line 186
    const/16 v5, 0x1d

    .line 187
    .line 188
    move-object v1, p0

    .line 189
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllllll(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :goto_7
    const-string v6, "Error consuming purchase!"

    .line 194
    .line 195
    sget-object v4, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 196
    .line 197
    const/16 v5, 0x1d

    .line 198
    .line 199
    move-object v1, p0

    .line 200
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllllll(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public final declared-synchronized Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwww:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/google/android/gms/internal/play_billing/zze;->zza:I

    .line 7
    .line 8
    new-instance v1, Lcom/android/billingclient/api/zzas;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzas;-><init>(Lcom/android/billingclient/api/BillingClientImpl;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwww:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwww:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public final Kkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final Kkkkkkkkkkkkkkkkk()Lcom/android/billingclient/api/BillingResult;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    filled-new-array {v1, v0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :goto_0
    const/4 v3, 0x2

    .line 11
    if-ge v1, v3, :cond_1

    .line 12
    .line 13
    :try_start_0
    aget v3, v0, v1

    .line 14
    .line 15
    iget v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    if-ne v4, v3, :cond_0

    .line 18
    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 21
    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 30
    .line 31
    return-object v0

    .line 32
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw v0
.end method

.method public final synthetic O000(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v1, 0x5

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 6
    .line 7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    const/16 p2, 0x77

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzn(Lcom/android/billingclient/api/BillingResult;I)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    move-object p1, v0

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v0

    .line 23
    move-object p1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v4, 0x3

    .line 33
    move-object v6, p1

    .line 34
    move-object v7, p2

    .line 35
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/play_billing/zzan;->zzf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object p1, v0

    .line 42
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 44
    :goto_0
    sget-object p2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p2, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :goto_1
    sget-object p2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p2, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public final synthetic O0000(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 p4, 0x5

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 6
    .line 7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    const/16 p2, 0x77

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzn(Lcom/android/billingclient/api/BillingResult;I)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    move-object p1, v0

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v0

    .line 23
    move-object p1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v7, 0x0

    .line 32
    move v3, p1

    .line 33
    move-object v5, p2

    .line 34
    move-object v6, p3

    .line 35
    move-object v8, p5

    .line 36
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzan;->zzg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    return-object p1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 45
    :goto_0
    sget-object p2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p2, p4, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :goto_1
    sget-object p2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p2, p4, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public final O000000(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/google/android/gms/internal/play_billing/zzkd;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkk(Lcom/google/android/gms/internal/play_billing/zzkd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    const-string v0, "BillingClient"

    .line 11
    .line 12
    const-string v1, "Unable to log."

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkk(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    const-string p2, "BillingClient"

    .line 11
    .line 12
    const-string p3, "Unable to log."

    .line 13
    .line 14
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final O00000000(IILcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkk(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    const-string p2, "BillingClient"

    .line 11
    .line 12
    const-string p3, "Unable to log."

    .line 13
    .line 14
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final O000000000(IILjava/lang/Exception;)V
    .locals 2
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "showInAppMessages error."

    .line 4
    .line 5
    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 9
    .line 10
    invoke-static {p3}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->zzc()Lcom/google/android/gms/internal/play_billing/zzke;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzke;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 22
    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/play_billing/zzke;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjz;->zzc()Lcom/google/android/gms/internal/play_billing/zzjx;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/play_billing/zzjx;->zza(Lcom/google/android/gms/internal/play_billing/zzke;)Lcom/google/android/gms/internal/play_billing/zzjx;

    .line 37
    .line 38
    .line 39
    const/16 p2, 0x1e

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjx;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzjx;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    const-string p2, "BillingLogger"

    .line 52
    .line 53
    const-string p3, "Unable to create logging payload"

    .line 54
    .line 55
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    :goto_2
    invoke-interface {v0, p1}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final O0000000000(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final declared-synchronized OO0()Lcom/google/android/gms/internal/play_billing/zzev;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwww:Lcom/google/android/gms/internal/play_billing/zzev;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/play_billing/zzev;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwww:Lcom/google/android/gms/internal/play_billing/zzev;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwww:Lcom/google/android/gms/internal/play_billing/zzev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public final OO000(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/zzdc;
    .locals 16
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v2, :cond_b

    .line 14
    .line 15
    add-int/lit8 v5, v4, 0x14

    .line 16
    .line 17
    if-le v5, v2, :cond_0

    .line 18
    .line 19
    move v6, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v6, v5

    .line 22
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    .line 23
    .line 24
    move-object/from16 v8, p2

    .line 25
    .line 26
    invoke-interface {v8, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    new-instance v13, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v4, "ITEM_ID_LIST"

    .line 39
    .line 40
    invoke-virtual {v13, v4, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 44
    .line 45
    const-string v6, "playBillingLibraryVersion"

    .line 46
    .line 47
    invoke-virtual {v13, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    iget-object v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v6
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 54
    .line 55
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    const/4 v6, 0x0

    .line 57
    if-nez v9, :cond_1

    .line 58
    .line 59
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 60
    .line 61
    const-string v2, "Service has been reset to null."

    .line 62
    .line 63
    const/16 v3, 0x77

    .line 64
    .line 65
    invoke-virtual {v1, v0, v3, v2, v6}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllllll(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdc;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :catch_1
    move-exception v0

    .line 74
    const/16 v4, 0x2b

    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_1
    iget-boolean v7, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwww:Z

    .line 79
    .line 80
    if-eqz v7, :cond_5

    .line 81
    .line 82
    iget-object v7, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    iget v7, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 89
    .line 90
    iget-object v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 91
    .line 92
    invoke-virtual {v10}, Lcom/android/billingclient/api/PendingPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkk()Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    iget-object v14, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v15, v1, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 103
    .line 104
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    new-instance v15, Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 111
    .line 112
    .line 113
    const/16 v6, 0x9

    .line 114
    .line 115
    if-lt v7, v6, :cond_2

    .line 116
    .line 117
    invoke-static {v15, v14, v3, v4}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 118
    .line 119
    .line 120
    :cond_2
    const/4 v3, 0x1

    .line 121
    if-lt v7, v6, :cond_3

    .line 122
    .line 123
    if-eqz v10, :cond_3

    .line 124
    .line 125
    const-string v4, "enablePendingPurchases"

    .line 126
    .line 127
    invoke-virtual {v15, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    :cond_3
    if-eqz v12, :cond_4

    .line 131
    .line 132
    const-string v4, "enablePendingPurchaseForSubscriptions"

    .line 133
    .line 134
    invoke-virtual {v15, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    :cond_4
    const/16 v10, 0xa

    .line 138
    .line 139
    move-object/from16 v12, p1

    .line 140
    .line 141
    move-object v14, v15

    .line 142
    invoke-interface/range {v9 .. v14}, Lcom/google/android/gms/internal/play_billing/zzan;->zzl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    move-object/from16 v12, p1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    iget-object v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const/4 v4, 0x3

    .line 156
    move-object/from16 v12, p1

    .line 157
    .line 158
    invoke-interface {v9, v4, v3, v12, v13}, Lcom/google/android/gms/internal/play_billing/zzan;->zzk(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 159
    .line 160
    .line 161
    move-result-object v3
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    :goto_2
    if-nez v3, :cond_6

    .line 163
    .line 164
    const-string v0, "querySkuDetailsAsync got null sku details list"

    .line 165
    .line 166
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 167
    .line 168
    const/16 v3, 0x2c

    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllllll(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdc;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    return-object v0

    .line 176
    :cond_6
    const-string v4, "DETAILS_LIST"

    .line 177
    .line 178
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    const/4 v6, 0x6

    .line 183
    if-nez v4, :cond_8

    .line 184
    .line 185
    const-string v0, "BillingClient"

    .line 186
    .line 187
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    const-string v2, "BillingClient"

    .line 192
    .line 193
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    invoke-static {v0, v2}, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v4, "getSkuDetails() failed. Response code: "

    .line 209
    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const/16 v3, 0x17

    .line 221
    .line 222
    const/4 v4, 0x0

    .line 223
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllllll(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdc;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    return-object v0

    .line 228
    :cond_7
    const/4 v4, 0x0

    .line 229
    invoke-static {v6, v2}, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const/16 v2, 0x2d

    .line 234
    .line 235
    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 236
    .line 237
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllllll(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdc;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    return-object v0

    .line 242
    :cond_8
    const-string v4, "DETAILS_LIST"

    .line 243
    .line 244
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    if-eqz v3, :cond_a

    .line 249
    .line 250
    const/4 v4, 0x0

    .line 251
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-ge v4, v7, :cond_9

    .line 256
    .line 257
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    check-cast v7, Ljava/lang/String;

    .line 262
    .line 263
    :try_start_3
    new-instance v9, Lcom/android/billingclient/api/SkuDetails;

    .line 264
    .line 265
    invoke-direct {v9, v7}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    const-string v10, "Got sku details: "

    .line 273
    .line 274
    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    const-string v10, "BillingClient"

    .line 279
    .line 280
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    add-int/lit8 v4, v4, 0x1

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :catch_2
    move-exception v0

    .line 290
    const-string v2, "Error trying to decode SkuDetails."

    .line 291
    .line 292
    invoke-static {v6, v2}, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    const/16 v3, 0x2f

    .line 297
    .line 298
    const-string v4, "Got a JSON exception trying to decode SkuDetails."

    .line 299
    .line 300
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllllll(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdc;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    return-object v0

    .line 305
    :cond_9
    move v4, v5

    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_a
    const-string v0, "querySkuDetailsAsync got null response list"

    .line 309
    .line 310
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 311
    .line 312
    const/16 v3, 0x2e

    .line 313
    .line 314
    const/4 v4, 0x0

    .line 315
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllllll(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdc;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    return-object v0

    .line 320
    :catchall_0
    move-exception v0

    .line 321
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 323
    :goto_4
    const-string v2, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    .line 324
    .line 325
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 326
    .line 327
    const/16 v4, 0x2b

    .line 328
    .line 329
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllllll(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdc;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    return-object v0

    .line 334
    :goto_5
    const-string v2, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    .line 335
    .line 336
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 337
    .line 338
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllllll(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdc;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    return-object v0

    .line 343
    :cond_b
    const-string v2, ""

    .line 344
    .line 345
    new-instance v3, Lcom/android/billingclient/api/zzdc;

    .line 346
    .line 347
    const/4 v4, 0x0

    .line 348
    invoke-direct {v3, v4, v2, v0}, Lcom/android/billingclient/api/zzdc;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 349
    .line 350
    .line 351
    return-object v3
.end method

.method public final OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Lcom/android/billingclient/api/zzp;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/zzp;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingResult;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public final OO000000()Lcom/android/billingclient/api/zzch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 2
    .line 3
    return-object v0
.end method

.method public final OO000000000(Lcom/android/billingclient/api/QueryProductDetailsParams;)Lcom/android/billingclient/api/zzbj;
    .locals 22
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/QueryProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/QueryProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/google/android/gms/internal/play_billing/zzco;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v9

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v9, :cond_f

    .line 22
    .line 23
    add-int/lit8 v11, v2, 0x14

    .line 24
    .line 25
    if-le v11, v9, :cond_0

    .line 26
    .line 27
    move v3, v9

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v3, v11

    .line 30
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-interface {v8, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v6, 0x0

    .line 49
    :goto_2
    if-ge v6, v3, :cond_1

    .line 50
    .line 51
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 56
    .line 57
    invoke-virtual {v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/lit8 v6, v6, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "ITEM_ID_LIST"

    .line 73
    .line 74
    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 78
    .line 79
    const-string v3, "playBillingLibraryVersion"

    .line 80
    .line 81
    invoke-virtual {v6, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :try_start_0
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    move-object v3, v2

    .line 88
    :try_start_1
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 89
    .line 90
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    const/4 v13, 0x0

    .line 92
    if-nez v2, :cond_2

    .line 93
    .line 94
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 95
    .line 96
    const-string v2, "Service has been reset to null."

    .line 97
    .line 98
    const/16 v3, 0x77

    .line 99
    .line 100
    invoke-virtual {v1, v0, v3, v2, v13}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :catch_1
    move-exception v0

    .line 109
    const/16 v4, 0x2b

    .line 110
    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :cond_2
    iget-boolean v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwww:Z

    .line 114
    .line 115
    const/4 v7, 0x1

    .line 116
    if-eq v7, v3, :cond_3

    .line 117
    .line 118
    const/16 v3, 0x11

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    const/16 v3, 0x14

    .line 122
    .line 123
    :goto_3
    iget-object v14, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkk()Z

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    iget-object v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    iget-object v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 148
    .line 149
    move-object/from16 v16, v14

    .line 150
    .line 151
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v13

    .line 155
    new-instance v12, Landroid/os/Bundle;

    .line 156
    .line 157
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-static {v12, v10, v13, v14}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 161
    .line 162
    .line 163
    const-string v10, "enablePendingPurchases"

    .line 164
    .line 165
    invoke-virtual {v12, v10, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    const-string v10, "SKU_DETAILS_RESPONSE_FORMAT"

    .line 169
    .line 170
    const-string v13, "PRODUCT_DETAILS"

    .line 171
    .line 172
    invoke-virtual {v12, v10, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    if-eqz v15, :cond_4

    .line 176
    .line 177
    const-string v10, "enablePendingPurchaseForSubscriptions"

    .line 178
    .line 179
    invoke-virtual {v12, v10, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance v13, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    const/4 v15, 0x0

    .line 197
    const/16 v17, 0x0

    .line 198
    .line 199
    const/16 v18, 0x0

    .line 200
    .line 201
    :goto_4
    if-ge v15, v14, :cond_6

    .line 202
    .line 203
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v19

    .line 207
    check-cast v19, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 208
    .line 209
    move/from16 v20, v7

    .line 210
    .line 211
    const/4 v7, 0x0

    .line 212
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v21

    .line 219
    xor-int/lit8 v7, v21, 0x1

    .line 220
    .line 221
    or-int v17, v17, v7

    .line 222
    .line 223
    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    move-object/from16 v19, v2

    .line 228
    .line 229
    const-string v2, "first_party"

    .line 230
    .line 231
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_5

    .line 236
    .line 237
    const-string v2, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products."

    .line 238
    .line 239
    const/4 v7, 0x0

    .line 240
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move/from16 v18, v20

    .line 247
    .line 248
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 249
    .line 250
    move-object/from16 v2, v19

    .line 251
    .line 252
    move/from16 v7, v20

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_6
    move-object/from16 v19, v2

    .line 256
    .line 257
    if-eqz v17, :cond_7

    .line 258
    .line 259
    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    .line 260
    .line 261
    invoke-virtual {v12, v2, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 262
    .line 263
    .line 264
    :cond_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-nez v2, :cond_8

    .line 269
    .line 270
    const-string v2, "SKU_SERIALIZED_DOCID_LIST"

    .line 271
    .line 272
    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 273
    .line 274
    .line 275
    :cond_8
    if-eqz v18, :cond_9

    .line 276
    .line 277
    const/4 v7, 0x0

    .line 278
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-nez v2, :cond_9

    .line 283
    .line 284
    const-string v2, "accountName"

    .line 285
    .line 286
    invoke-virtual {v12, v2, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_9
    move-object v7, v12

    .line 290
    move-object/from16 v4, v16

    .line 291
    .line 292
    move-object/from16 v2, v19

    .line 293
    .line 294
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zzan;->zzl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 295
    .line 296
    .line 297
    move-result-object v2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 298
    if-nez v2, :cond_a

    .line 299
    .line 300
    const-string v0, "queryProductDetailsAsync got empty product details response."

    .line 301
    .line 302
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 303
    .line 304
    const/16 v3, 0x2c

    .line 305
    .line 306
    const/4 v7, 0x0

    .line 307
    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    return-object v0

    .line 312
    :cond_a
    const-string v3, "DETAILS_LIST"

    .line 313
    .line 314
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    const/4 v4, 0x6

    .line 319
    if-nez v3, :cond_c

    .line 320
    .line 321
    const-string v0, "BillingClient"

    .line 322
    .line 323
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    const-string v3, "BillingClient"

    .line 328
    .line 329
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    if-eqz v0, :cond_b

    .line 334
    .line 335
    invoke-static {v0, v2}, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    const-string v4, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    .line 345
    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    const/16 v3, 0x17

    .line 357
    .line 358
    const/4 v7, 0x0

    .line 359
    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    return-object v0

    .line 364
    :cond_b
    const/4 v7, 0x0

    .line 365
    invoke-static {v4, v2}, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    const/16 v2, 0x2d

    .line 370
    .line 371
    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    .line 372
    .line 373
    invoke-virtual {v1, v0, v2, v3, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    return-object v0

    .line 378
    :cond_c
    const-string v3, "DETAILS_LIST"

    .line 379
    .line 380
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    if-eqz v2, :cond_e

    .line 385
    .line 386
    const/4 v3, 0x0

    .line 387
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    if-ge v3, v6, :cond_d

    .line 392
    .line 393
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    check-cast v6, Ljava/lang/String;

    .line 398
    .line 399
    :try_start_3
    new-instance v7, Lcom/android/billingclient/api/ProductDetails;

    .line 400
    .line 401
    invoke-direct {v7, v6}, Lcom/android/billingclient/api/ProductDetails;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 402
    .line 403
    .line 404
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    const-string v10, "Got product details: "

    .line 409
    .line 410
    invoke-virtual {v10, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    const-string v10, "BillingClient"

    .line 415
    .line 416
    invoke-static {v10, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    add-int/lit8 v3, v3, 0x1

    .line 423
    .line 424
    goto :goto_5

    .line 425
    :catch_2
    move-exception v0

    .line 426
    const-string v2, "Error trying to decode SkuDetails."

    .line 427
    .line 428
    invoke-static {v4, v2}, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    const/16 v3, 0x2f

    .line 433
    .line 434
    const-string v4, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    .line 435
    .line 436
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    return-object v0

    .line 441
    :cond_d
    move v2, v11

    .line 442
    goto/16 :goto_0

    .line 443
    .line 444
    :cond_e
    const-string v0, "queryProductDetailsAsync got null response list"

    .line 445
    .line 446
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 447
    .line 448
    const/16 v3, 0x2e

    .line 449
    .line 450
    const/4 v7, 0x0

    .line 451
    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    return-object v0

    .line 456
    :catchall_0
    move-exception v0

    .line 457
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 458
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 459
    :goto_6
    const-string v2, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 460
    .line 461
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 462
    .line 463
    const/16 v4, 0x2b

    .line 464
    .line 465
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    return-object v0

    .line 470
    :goto_7
    const-string v2, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 471
    .line 472
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 473
    .line 474
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkk(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    return-object v0

    .line 479
    :cond_f
    const-string v2, ""

    .line 480
    .line 481
    new-instance v3, Lcom/android/billingclient/api/zzbj;

    .line 482
    .line 483
    const/4 v4, 0x0

    .line 484
    invoke-direct {v3, v4, v2, v0}, Lcom/android/billingclient/api/zzbj;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 485
    .line 486
    .line 487
    return-object v3
.end method

.method public final synthetic QQO(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x5e

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 8
    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 13
    .line 14
    const/16 v3, 0x77

    .line 15
    .line 16
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllll(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception v2

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Lcom/android/billingclient/api/zzbc;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 45
    .line 46
    iget v7, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 47
    .line 48
    invoke-direct {v5, p1, v6, v7, v1}, Lcom/android/billingclient/api/zzbc;-><init>(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/zzch;ILcom/android/billingclient/api/zzbl;)V

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x16

    .line 52
    .line 53
    invoke-interface {v3, v6, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzn(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzaa;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception v3

    .line 58
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 60
    :goto_0
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 61
    .line 62
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllll(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 67
    .line 68
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllll(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    return-object v1
.end method

.method public final synthetic QQOO(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x46

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 8
    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 13
    .line 14
    const/16 v3, 0x77

    .line 15
    .line 16
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception v2

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Lcom/android/billingclient/api/zzbb;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 45
    .line 46
    iget v7, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 47
    .line 48
    invoke-direct {v5, p1, v6, v7, v1}, Lcom/android/billingclient/api/zzbb;-><init>(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/zzch;ILcom/android/billingclient/api/zzbl;)V

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x15

    .line 52
    .line 53
    invoke-interface {v3, v6, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzm(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzy;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception v3

    .line 58
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 60
    :goto_0
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 61
    .line 62
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 67
    .line 68
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    return-object v1
.end method

.method public final synthetic QQOOOO(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x76

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 9
    .line 10
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const/16 p1, 0x77

    .line 14
    .line 15
    :try_start_2
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->O000000000(IILjava/lang/Exception;)V

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :catch_1
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v5, Lcom/android/billingclient/api/zzbi;

    .line 30
    .line 31
    new-instance v6, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-direct {v6, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v5, v6, p3, v2}, Lcom/android/billingclient/api/zzbi;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzbl;)V

    .line 37
    .line 38
    .line 39
    const/16 p2, 0xc

    .line 40
    .line 41
    invoke-interface {v4, p2, v3, p1, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzt(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzap;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    :goto_0
    const/4 p2, 0x6

    .line 49
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O000000000(IILjava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O000000000(IILjava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    return-object v2
.end method

.method public final synthetic QQOOOOO(Lcom/android/billingclient/api/BillingConfigResponseListener;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x3e

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 8
    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 13
    .line 14
    const/16 v3, 0x77

    .line 15
    .line 16
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->IIl(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception v2

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    new-instance v7, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v7, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    new-instance v4, Lcom/android/billingclient/api/zzbe;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 49
    .line 50
    iget v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 51
    .line 52
    invoke-direct {v4, p1, v5, v6, v1}, Lcom/android/billingclient/api/zzbe;-><init>(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/zzch;ILcom/android/billingclient/api/zzbl;)V

    .line 53
    .line 54
    .line 55
    const/16 v5, 0x12

    .line 56
    .line 57
    invoke-interface {v3, v5, v2, v7, v4}, Lcom/google/android/gms/internal/play_billing/zzan;->zzp(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzae;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception v3

    .line 62
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 64
    :goto_0
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 65
    .line 66
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->IIl(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 71
    .line 72
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->IIl(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    return-object v1
.end method

.method public final synthetic QQOOOOOO(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkk(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1
.end method

.method public final synthetic QQOOOOOOO(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 8
    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    :try_start_2
    sget-object p2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 13
    .line 14
    const/16 v2, 0x77

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllllllll(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :catch_0
    move-exception p2

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    new-instance v7, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v7, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    const/16 v4, 0x9

    .line 51
    .line 52
    invoke-interface {v3, v4, v2, p2, v7}, Lcom/google/android/gms/internal/play_billing/zzan;->zzd(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    const-string v0, "BillingClient"

    .line 57
    .line 58
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const-string v2, "BillingClient"

    .line 63
    .line 64
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {v0, p2}, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :catchall_0
    move-exception p2

    .line 77
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :try_start_4
    throw p2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    :goto_0
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 80
    .line 81
    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllllllll(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :goto_1
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 86
    .line 87
    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllllllllll(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 88
    .line 89
    .line 90
    return-object v1
.end method

.method public final synthetic Sssssssssss(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x45

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 8
    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 13
    .line 14
    const/16 v3, 0x77

    .line 15
    .line 16
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception v2

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Lcom/android/billingclient/api/zzbg;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 45
    .line 46
    iget v7, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 47
    .line 48
    invoke-direct {v5, p1, v6, v7, v1}, Lcom/android/billingclient/api/zzbg;-><init>(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/zzch;ILcom/android/billingclient/api/zzbl;)V

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x15

    .line 52
    .line 53
    invoke-interface {v3, v6, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzr(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzai;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception v3

    .line 58
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 60
    :goto_0
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 61
    .line 62
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 67
    .line 68
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllllllll(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    return-object v1
.end method

.method public final synthetic Wwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x62

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 8
    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    :try_start_2
    sget-object p2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 13
    .line 14
    const/16 p3, 0x77

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->IIll(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p2

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Lcom/android/billingclient/api/zzbf;

    .line 43
    .line 44
    new-instance v6, Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-direct {v6, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v5, v6, p3, v1}, Lcom/android/billingclient/api/zzbf;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzbl;)V

    .line 50
    .line 51
    .line 52
    const/16 p2, 0x16

    .line 53
    .line 54
    invoke-interface {v3, p2, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzq(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzag;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception p2

    .line 59
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :try_start_4
    throw p2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :goto_0
    sget-object p3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 62
    .line 63
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->IIll(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    sget-object p3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 68
    .line 69
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->IIll(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 70
    .line 71
    .line 72
    :goto_2
    return-object v1
.end method

.method public final synthetic Wwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x4a

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 8
    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    :try_start_2
    sget-object p2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 13
    .line 14
    const/16 p3, 0x77

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000000(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p2

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Lcom/android/billingclient/api/zzbd;

    .line 43
    .line 44
    new-instance v6, Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-direct {v6, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v5, v6, p3, v1}, Lcom/android/billingclient/api/zzbd;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzbl;)V

    .line 50
    .line 51
    .line 52
    const/16 p2, 0x15

    .line 53
    .line 54
    invoke-interface {v3, p2, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzo(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzac;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception p2

    .line 59
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :try_start_4
    throw p2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :goto_0
    sget-object p3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 62
    .line 63
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000000(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    sget-object p3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 68
    .line 69
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000000(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 70
    .line 71
    .line 72
    :goto_2
    return-object v1
.end method

.method public final synthetic Wwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 8
    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 13
    .line 14
    const/16 v3, 0x77

    .line 15
    .line 16
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllll(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception v2

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Lcom/android/billingclient/api/zzbh;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 45
    .line 46
    iget v7, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 47
    .line 48
    invoke-direct {v5, p1, v6, v7, v1}, Lcom/android/billingclient/api/zzbh;-><init>(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/zzch;ILcom/android/billingclient/api/zzbl;)V

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x16

    .line 52
    .line 53
    invoke-interface {v3, v6, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzs(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzak;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception v3

    .line 58
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 60
    :goto_0
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 61
    .line 62
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllll(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    sget-object v3, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 67
    .line 68
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Illlllllllllllllllllll(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    return-object v1
.end method

.method public Wwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const-string v0, "BillingClient"

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 42
    .line 43
    const/16 v0, 0x31

    .line 44
    .line 45
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    if-nez v6, :cond_2

    .line 53
    .line 54
    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty."

    .line 55
    .line 56
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 60
    .line 61
    const/16 v0, 0x30

    .line 62
    .line 63
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    new-instance v3, Lcom/android/billingclient/api/zzz;

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    move-object v4, p0

    .line 74
    move-object v8, p2

    .line 75
    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/zzz;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 76
    .line 77
    .line 78
    move-object p1, v4

    .line 79
    new-instance v6, Lcom/android/billingclient/api/zzab;

    .line 80
    .line 81
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/zzab;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllllll()Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const-wide/16 v4, 0x7530

    .line 93
    .line 94
    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-nez v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkk()Lcom/android/billingclient/api/BillingResult;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/16 v3, 0x19

    .line 105
    .line 106
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p2, v0, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/zzb;Ljava/lang/String;Lcom/android/billingclient/api/zzch;)V
    .locals 7
    .param p4    # Lcom/android/billingclient/api/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/zzch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 12
    .line 13
    .line 14
    iget-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 21
    .line 22
    .line 23
    iget-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 30
    .line 31
    .line 32
    if-eqz p6, :cond_0

    .line 33
    .line 34
    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzku;

    .line 44
    .line 45
    new-instance p6, Lcom/android/billingclient/api/zzcl;

    .line 46
    .line 47
    invoke-direct {p6, p5, p1}, Lcom/android/billingclient/api/zzcl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    .line 48
    .line 49
    .line 50
    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 51
    .line 52
    :goto_0
    if-nez p2, :cond_1

    .line 53
    .line 54
    const-string p1, "BillingClient"

    .line 55
    .line 56
    const-string p5, "Billing client should have a valid listener but the provided is null."

    .line 57
    .line 58
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    new-instance v0, Lcom/android/billingclient/api/zzn;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    move-object v2, p2

    .line 70
    move-object v4, p4

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzn;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzch;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzn;

    .line 75
    .line 76
    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 p1, 0x0

    .line 83
    :goto_1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwww:Z

    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/UserChoiceBillingListener;Ljava/lang/String;Lcom/android/billingclient/api/zzch;)V
    .locals 7
    .param p4    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/zzch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 12
    .line 13
    .line 14
    iget-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 21
    .line 22
    .line 23
    iget-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 30
    .line 31
    .line 32
    if-eqz p6, :cond_0

    .line 33
    .line 34
    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzku;

    .line 44
    .line 45
    new-instance p6, Lcom/android/billingclient/api/zzcl;

    .line 46
    .line 47
    invoke-direct {p6, p5, p1}, Lcom/android/billingclient/api/zzcl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    .line 48
    .line 49
    .line 50
    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 51
    .line 52
    :goto_0
    if-nez p2, :cond_1

    .line 53
    .line 54
    const-string p1, "BillingClient"

    .line 55
    .line 56
    const-string p5, "Billing client should have a valid listener but the provided is null."

    .line 57
    .line 58
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    new-instance v0, Lcom/android/billingclient/api/zzn;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    move-object v2, p2

    .line 70
    move-object v5, p4

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzn;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzch;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzn;

    .line 75
    .line 76
    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 77
    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 p1, 0x0

    .line 83
    :goto_1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwww:Z

    .line 84
    .line 85
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllll()Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    monitor-exit v0

    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v1, v3, :cond_1

    .line 25
    .line 26
    const-string v1, "BillingClient"

    .line 27
    .line 28
    const-string v3, "Client is already in the process of connecting to billing service."

    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 34
    .line 35
    const/16 v3, 0x25

    .line 36
    .line 37
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 44
    .line 45
    const/4 v4, 0x3

    .line 46
    if-ne v1, v4, :cond_2

    .line 47
    .line 48
    const-string v1, "BillingClient"

    .line 49
    .line 50
    const-string v3, "Client was already closed and can\'t be reused. Please create another instance."

    .line 51
    .line 52
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 56
    .line 57
    const/16 v3, 0x26

    .line 58
    .line 59
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkk(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkk()V

    .line 69
    .line 70
    .line 71
    const-string v1, "BillingClient"

    .line 72
    .line 73
    const-string v4, "Starting in-app billing setup."

    .line 74
    .line 75
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/android/billingclient/api/zzba;

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-direct {v1, p0, p1, v4}, Lcom/android/billingclient/api/zzba;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/zzbl;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzba;

    .line 85
    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    .line 88
    .line 89
    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    .line 90
    .line 91
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v1, "com.android.vending"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v5, 0x0

    .line 106
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const/16 v6, 0x29

    .line 111
    .line 112
    if-eqz v1, :cond_8

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-nez v7, :cond_8

    .line 119
    .line 120
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 125
    .line 126
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 127
    .line 128
    const/16 v6, 0x28

    .line 129
    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    iget-object v7, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 135
    .line 136
    const-string v8, "com.android.vending"

    .line 137
    .line 138
    invoke-static {v7, v8}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_6

    .line 143
    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    new-instance v6, Landroid/content/ComponentName;

    .line 147
    .line 148
    invoke-direct {v6, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Landroid/content/Intent;

    .line 152
    .line 153
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 160
    .line 161
    const-string v6, "playBillingLibraryVersion"

    .line 162
    .line 163
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 167
    .line 168
    monitor-enter v0

    .line 169
    :try_start_1
    iget v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 170
    .line 171
    const/4 v7, 0x2

    .line 172
    if-ne v6, v7, :cond_3

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllll()Lcom/android/billingclient/api/BillingResult;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    monitor-exit v0

    .line 179
    goto :goto_2

    .line 180
    :catchall_1
    move-exception p1

    .line 181
    goto :goto_0

    .line 182
    :cond_3
    iget v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 183
    .line 184
    if-eq v6, v3, :cond_4

    .line 185
    .line 186
    const-string v1, "BillingClient"

    .line 187
    .line 188
    const-string v3, "Client state no longer CONNECTING, returning service disconnected."

    .line 189
    .line 190
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    sget-object v1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 194
    .line 195
    const/16 v3, 0x75

    .line 196
    .line 197
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 198
    .line 199
    .line 200
    monitor-exit v0

    .line 201
    goto :goto_2

    .line 202
    :cond_4
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzba;

    .line 203
    .line 204
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {v0, v1, v6, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_5

    .line 212
    .line 213
    const-string v0, "BillingClient"

    .line 214
    .line 215
    const-string v1, "Service was bonded successfully."

    .line 216
    .line 217
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    move-object v1, v4

    .line 221
    goto :goto_2

    .line 222
    :cond_5
    const-string v0, "BillingClient"

    .line 223
    .line 224
    const-string v1, "Connection to Billing service is blocked."

    .line 225
    .line 226
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const/16 v6, 0x27

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    throw p1

    .line 234
    :cond_6
    const-string v0, "BillingClient"

    .line 235
    .line 236
    const-string v1, "The device doesn\'t have valid Play Store."

    .line 237
    .line 238
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_7
    const-string v0, "BillingClient"

    .line 243
    .line 244
    const-string v1, "The device doesn\'t have valid Play Store."

    .line 245
    .line 246
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_8
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkk(I)V

    .line 250
    .line 251
    .line 252
    const-string v0, "BillingClient"

    .line 253
    .line 254
    const-string v1, "Billing service unavailable on device."

    .line 255
    .line 256
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    sget-object v1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 260
    .line 261
    invoke-virtual {p0, v6, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 262
    .line 263
    .line 264
    :goto_2
    if-eqz v1, :cond_9

    .line 265
    .line 266
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    .line 267
    .line 268
    .line 269
    :cond_9
    return-void

    .line 270
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkk(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkk(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwww:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string p1, "BillingClient"

    .line 28
    .line 29
    const-string v0, "Querying product details is not supported."

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 35
    .line 36
    const/16 v0, 0x14

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    new-instance v2, Lcom/android/billingclient/api/zzam;

    .line 51
    .line 52
    invoke-direct {v2, p0, p1, p2}, Lcom/android/billingclient/api/zzam;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 53
    .line 54
    .line 55
    new-instance v5, Lcom/android/billingclient/api/zzan;

    .line 56
    .line 57
    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzan;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllllll()Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const-wide/16 v3, 0x7530

    .line 69
    .line 70
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkk()Lcom/android/billingclient/api/BillingResult;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const/16 v0, 0x19

    .line 81
    .line 82
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v8, "BUY_INTENT"

    .line 4
    .line 5
    const-string v0, "proxyPackageVersion"

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzn;

    .line 8
    .line 9
    const/4 v9, 0x2

    .line 10
    if-eqz v2, :cond_3d

    .line 11
    .line 12
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzn;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/billingclient/api/zzn;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_3d

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 27
    .line 28
    invoke-virtual {v1, v9, v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v10, 0x0

    .line 44
    invoke-static {v2, v10}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/android/billingclient/api/SkuDetails;

    .line 49
    .line 50
    invoke-static {v3, v10}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ProductDetails;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ProductDetails;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v11}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    :goto_0
    const-string v12, "subs"

    .line 84
    .line 85
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    const/16 v13, 0x9

    .line 90
    .line 91
    const-string v14, "BillingClient"

    .line 92
    .line 93
    if-eqz v12, :cond_3

    .line 94
    .line 95
    iget-boolean v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 96
    .line 97
    if-eqz v12, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const-string v0, "Current client doesn\'t support subscriptions."

    .line 101
    .line 102
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 106
    .line 107
    invoke-virtual {v1, v13, v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_3
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwww()Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_5

    .line 119
    .line 120
    iget-boolean v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 121
    .line 122
    if-eqz v12, :cond_4

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 126
    .line 127
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 131
    .line 132
    const/16 v2, 0x12

    .line 133
    .line 134
    invoke-virtual {v1, v2, v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 138
    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    const/4 v15, 0x1

    .line 146
    if-le v12, v15, :cond_7

    .line 147
    .line 148
    iget-boolean v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwww:Z

    .line 149
    .line 150
    if-eqz v12, :cond_6

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 154
    .line 155
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 159
    .line 160
    const/16 v2, 0x13

    .line 161
    .line 162
    invoke-virtual {v1, v2, v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 166
    .line 167
    .line 168
    return-object v0

    .line 169
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    if-nez v12, :cond_9

    .line 174
    .line 175
    iget-boolean v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwww:Z

    .line 176
    .line 177
    if-eqz v12, :cond_8

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_8
    const-string v0, "Current client doesn\'t support purchases with ProductDetails."

    .line 181
    .line 182
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 186
    .line 187
    const/16 v2, 0x14

    .line 188
    .line 189
    invoke-virtual {v1, v2, v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 193
    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_9
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    sget-object v13, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 201
    .line 202
    if-eq v12, v13, :cond_a

    .line 203
    .line 204
    const/16 v0, 0x78

    .line 205
    .line 206
    invoke-virtual {v1, v0, v9, v12}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v12}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 210
    .line 211
    .line 212
    return-object v12

    .line 213
    :cond_a
    iget-boolean v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 214
    .line 215
    if-eqz v12, :cond_35

    .line 216
    .line 217
    iget-boolean v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 218
    .line 219
    iget-boolean v13, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwww:Z

    .line 220
    .line 221
    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 222
    .line 223
    invoke-virtual {v9}, Lcom/android/billingclient/api/PendingPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    move-object/from16 v17, v10

    .line 228
    .line 229
    iget-object v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 230
    .line 231
    invoke-virtual {v10}, Lcom/android/billingclient/api/PendingPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    iget-boolean v15, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwww:Z

    .line 236
    .line 237
    move-object/from16 v19, v4

    .line 238
    .line 239
    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 240
    .line 241
    move-object/from16 v20, v5

    .line 242
    .line 243
    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->Www:Ljava/lang/Long;

    .line 244
    .line 245
    move-object/from16 v21, v6

    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 248
    .line 249
    .line 250
    move-result-wide v5

    .line 251
    move/from16 v22, v9

    .line 252
    .line 253
    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 254
    .line 255
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    move/from16 v23, v10

    .line 260
    .line 261
    new-instance v10, Landroid/os/Bundle;

    .line 262
    .line 263
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-static {v10, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 267
    .line 268
    .line 269
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_b

    .line 274
    .line 275
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    const-string v5, "prorationMode"

    .line 280
    .line 281
    invoke-virtual {v10, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-nez v4, :cond_c

    .line 293
    .line 294
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    const-string v5, "accountId"

    .line 299
    .line 300
    invoke-virtual {v10, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-nez v4, :cond_d

    .line 312
    .line 313
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    const-string v5, "obfuscatedProfileId"

    .line 318
    .line 319
    invoke-virtual {v10, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwww()Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eqz v4, :cond_e

    .line 327
    .line 328
    const-string v4, "isOfferPersonalizedByDeveloper"

    .line 329
    .line 330
    const/4 v5, 0x1

    .line 331
    invoke-virtual {v10, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    .line 333
    .line 334
    :cond_e
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-nez v4, :cond_f

    .line 339
    .line 340
    new-instance v4, Ljava/util/ArrayList;

    .line 341
    .line 342
    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 351
    .line 352
    .line 353
    const-string v5, "skusToReplace"

    .line 354
    .line 355
    invoke-virtual {v10, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 356
    .line 357
    .line 358
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-nez v4, :cond_10

    .line 367
    .line 368
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    const-string v5, "oldSkuPurchaseToken"

    .line 373
    .line 374
    invoke-virtual {v10, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :cond_10
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-nez v4, :cond_11

    .line 382
    .line 383
    const-string v4, "oldSkuPurchaseId"

    .line 384
    .line 385
    move-object/from16 v5, v17

    .line 386
    .line 387
    invoke-virtual {v10, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_11
    move-object/from16 v5, v17

    .line 392
    .line 393
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-nez v4, :cond_12

    .line 402
    .line 403
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    const-string v6, "originalExternalTransactionId"

    .line 408
    .line 409
    invoke-virtual {v10, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    :cond_12
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    if-nez v4, :cond_13

    .line 417
    .line 418
    const-string v4, "paymentsPurchaseParams"

    .line 419
    .line 420
    invoke-virtual {v10, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_13
    if-eqz v12, :cond_14

    .line 424
    .line 425
    if-eqz v22, :cond_14

    .line 426
    .line 427
    const-string v4, "enablePendingPurchases"

    .line 428
    .line 429
    const/4 v5, 0x1

    .line 430
    invoke-virtual {v10, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_14
    const/4 v5, 0x1

    .line 435
    :goto_6
    if-eqz v13, :cond_15

    .line 436
    .line 437
    if-eqz v23, :cond_15

    .line 438
    .line 439
    const-string v4, "enablePendingPurchaseForSubscriptions"

    .line 440
    .line 441
    invoke-virtual {v10, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    .line 443
    .line 444
    :cond_15
    if-eqz v15, :cond_16

    .line 445
    .line 446
    const-string v4, "enableAlternativeBilling"

    .line 447
    .line 448
    invoke-virtual {v10, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    .line 450
    .line 451
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    new-instance v5, Lcom/google/android/gms/internal/play_billing/zza;

    .line 460
    .line 461
    invoke-direct {v5}, Lcom/google/android/gms/internal/play_billing/zza;-><init>()V

    .line 462
    .line 463
    .line 464
    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 465
    .line 466
    .line 467
    move-result v4

    .line 468
    if-eqz v4, :cond_17

    .line 469
    .line 470
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfn;->zza()Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-static {v5}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    new-instance v6, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 483
    .line 484
    invoke-direct {v6}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    new-instance v6, Lcom/google/android/gms/internal/play_billing/zzc;

    .line 492
    .line 493
    invoke-direct {v6, v9}, Lcom/google/android/gms/internal/play_billing/zzc;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 497
    .line 498
    .line 499
    move-result-object v5

    .line 500
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzo()Lj$/util/stream/Collector;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    check-cast v5, Ljava/lang/Iterable;

    .line 509
    .line 510
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfm;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzfn;

    .line 518
    .line 519
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfv;->zzh()[B

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    const-string v5, "subscriptionProductReplacementParamsList"

    .line 524
    .line 525
    invoke-virtual {v10, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 526
    .line 527
    .line 528
    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    const-string v5, "additionalSkuTypes"

    .line 533
    .line 534
    const-string v6, "additionalSkus"

    .line 535
    .line 536
    const-string v9, "SKU_SERIALIZED_DOCID_LIST"

    .line 537
    .line 538
    const-string v12, "skuDetailsTokens"

    .line 539
    .line 540
    const-string v13, "SKU_OFFER_ID_TOKEN_LIST"

    .line 541
    .line 542
    if-nez v4, :cond_21

    .line 543
    .line 544
    new-instance v4, Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .line 548
    .line 549
    new-instance v15, Ljava/util/ArrayList;

    .line 550
    .line 551
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .line 553
    .line 554
    move-object/from16 v23, v11

    .line 555
    .line 556
    new-instance v11, Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .line 560
    .line 561
    move-object/from16 v24, v8

    .line 562
    .line 563
    new-instance v8, Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .line 567
    .line 568
    new-instance v7, Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .line 572
    .line 573
    move-object/from16 v25, v0

    .line 574
    .line 575
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    move-object/from16 v30, v14

    .line 580
    .line 581
    const/4 v14, 0x0

    .line 582
    const/16 v26, 0x0

    .line 583
    .line 584
    const/16 v27, 0x0

    .line 585
    .line 586
    const/16 v28, 0x0

    .line 587
    .line 588
    const/16 v29, 0x0

    .line 589
    .line 590
    :goto_7
    if-ge v14, v0, :cond_1a

    .line 591
    .line 592
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v31

    .line 596
    add-int/lit8 v14, v14, 0x1

    .line 597
    .line 598
    check-cast v31, Lcom/android/billingclient/api/SkuDetails;

    .line 599
    .line 600
    invoke-virtual/range {v31 .. v31}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v32

    .line 604
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    .line 605
    .line 606
    .line 607
    move-result v32

    .line 608
    if-nez v32, :cond_18

    .line 609
    .line 610
    move/from16 v32, v0

    .line 611
    .line 612
    invoke-virtual/range {v31 .. v31}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    goto :goto_8

    .line 620
    :cond_18
    move/from16 v32, v0

    .line 621
    .line 622
    :goto_8
    invoke-virtual/range {v31 .. v31}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    move/from16 v33, v14

    .line 627
    .line 628
    invoke-virtual/range {v31 .. v31}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v14

    .line 632
    invoke-virtual/range {v31 .. v31}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 633
    .line 634
    .line 635
    move-result v34

    .line 636
    invoke-virtual/range {v31 .. v31}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    const/16 v18, 0x1

    .line 648
    .line 649
    xor-int/lit8 v0, v0, 0x1

    .line 650
    .line 651
    or-int v26, v26, v0

    .line 652
    .line 653
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    xor-int/lit8 v0, v0, 0x1

    .line 661
    .line 662
    or-int v27, v27, v0

    .line 663
    .line 664
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    if-eqz v34, :cond_19

    .line 672
    .line 673
    move/from16 v0, v18

    .line 674
    .line 675
    goto :goto_9

    .line 676
    :cond_19
    const/4 v0, 0x0

    .line 677
    :goto_9
    or-int v28, v28, v0

    .line 678
    .line 679
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    xor-int/lit8 v0, v0, 0x1

    .line 684
    .line 685
    or-int v29, v29, v0

    .line 686
    .line 687
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-object/from16 v1, p0

    .line 691
    .line 692
    move/from16 v0, v32

    .line 693
    .line 694
    move/from16 v14, v33

    .line 695
    .line 696
    goto :goto_7

    .line 697
    :cond_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 698
    .line 699
    .line 700
    move-result v0

    .line 701
    if-nez v0, :cond_1b

    .line 702
    .line 703
    invoke-virtual {v10, v12, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 704
    .line 705
    .line 706
    :cond_1b
    if-eqz v26, :cond_1c

    .line 707
    .line 708
    invoke-virtual {v10, v13, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 709
    .line 710
    .line 711
    :cond_1c
    if-eqz v27, :cond_1d

    .line 712
    .line 713
    const-string v0, "SKU_OFFER_ID_LIST"

    .line 714
    .line 715
    invoke-virtual {v10, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 716
    .line 717
    .line 718
    :cond_1d
    if-eqz v28, :cond_1e

    .line 719
    .line 720
    const-string v0, "SKU_OFFER_TYPE_LIST"

    .line 721
    .line 722
    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 723
    .line 724
    .line 725
    :cond_1e
    if-eqz v29, :cond_1f

    .line 726
    .line 727
    invoke-virtual {v10, v9, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 728
    .line 729
    .line 730
    :cond_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    const/4 v1, 0x1

    .line 735
    if-le v0, v1, :cond_2a

    .line 736
    .line 737
    new-instance v0, Ljava/util/ArrayList;

    .line 738
    .line 739
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 740
    .line 741
    .line 742
    move-result v1

    .line 743
    add-int/lit8 v1, v1, -0x1

    .line 744
    .line 745
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 746
    .line 747
    .line 748
    new-instance v1, Ljava/util/ArrayList;

    .line 749
    .line 750
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 751
    .line 752
    .line 753
    move-result v4

    .line 754
    add-int/lit8 v4, v4, -0x1

    .line 755
    .line 756
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 757
    .line 758
    .line 759
    const/4 v4, 0x1

    .line 760
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 761
    .line 762
    .line 763
    move-result v7

    .line 764
    if-ge v4, v7, :cond_20

    .line 765
    .line 766
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v7

    .line 770
    check-cast v7, Lcom/android/billingclient/api/SkuDetails;

    .line 771
    .line 772
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v7

    .line 776
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v7

    .line 783
    check-cast v7, Lcom/android/billingclient/api/SkuDetails;

    .line 784
    .line 785
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v7

    .line 789
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    add-int/lit8 v4, v4, 0x1

    .line 793
    .line 794
    goto :goto_a

    .line 795
    :cond_20
    invoke-virtual {v10, v6, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v10, v5, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 799
    .line 800
    .line 801
    goto/16 :goto_d

    .line 802
    .line 803
    :cond_21
    move-object/from16 v25, v0

    .line 804
    .line 805
    move-object/from16 v24, v8

    .line 806
    .line 807
    move-object/from16 v23, v11

    .line 808
    .line 809
    move-object/from16 v30, v14

    .line 810
    .line 811
    new-instance v0, Ljava/util/ArrayList;

    .line 812
    .line 813
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 814
    .line 815
    .line 816
    move-result v1

    .line 817
    add-int/lit8 v1, v1, -0x1

    .line 818
    .line 819
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 820
    .line 821
    .line 822
    new-instance v1, Ljava/util/ArrayList;

    .line 823
    .line 824
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 825
    .line 826
    .line 827
    move-result v2

    .line 828
    add-int/lit8 v2, v2, -0x1

    .line 829
    .line 830
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 831
    .line 832
    .line 833
    new-instance v2, Ljava/util/ArrayList;

    .line 834
    .line 835
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .line 837
    .line 838
    new-instance v4, Ljava/util/ArrayList;

    .line 839
    .line 840
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .line 842
    .line 843
    new-instance v7, Ljava/util/ArrayList;

    .line 844
    .line 845
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .line 847
    .line 848
    new-instance v8, Ljava/util/ArrayList;

    .line 849
    .line 850
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .line 852
    .line 853
    const/4 v11, 0x0

    .line 854
    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 855
    .line 856
    .line 857
    move-result v14

    .line 858
    if-ge v11, v14, :cond_27

    .line 859
    .line 860
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v14

    .line 864
    check-cast v14, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 865
    .line 866
    invoke-virtual {v14}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ProductDetails;

    .line 867
    .line 868
    .line 869
    move-result-object v15

    .line 870
    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v26

    .line 874
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    .line 875
    .line 876
    .line 877
    move-result v26

    .line 878
    if-nez v26, :cond_22

    .line 879
    .line 880
    move-object/from16 v26, v14

    .line 881
    .line 882
    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v14

    .line 886
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    goto :goto_c

    .line 890
    :cond_22
    move-object/from16 v26, v14

    .line 891
    .line 892
    :goto_c
    invoke-virtual/range {v26 .. v26}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v14

    .line 896
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v14

    .line 903
    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 904
    .line 905
    .line 906
    move-result-object v26

    .line 907
    if-eqz v26, :cond_24

    .line 908
    .line 909
    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 910
    .line 911
    .line 912
    move-result-object v26

    .line 913
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    .line 914
    .line 915
    .line 916
    move-result v26

    .line 917
    if-nez v26, :cond_24

    .line 918
    .line 919
    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 920
    .line 921
    .line 922
    move-result-object v15

    .line 923
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 924
    .line 925
    .line 926
    move-result-object v15

    .line 927
    :cond_23
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 928
    .line 929
    .line 930
    move-result v26

    .line 931
    if-eqz v26, :cond_24

    .line 932
    .line 933
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v26

    .line 937
    check-cast v26, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 938
    .line 939
    invoke-virtual/range {v26 .. v26}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v27

    .line 943
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 944
    .line 945
    .line 946
    move-result v27

    .line 947
    if-nez v27, :cond_23

    .line 948
    .line 949
    invoke-virtual/range {v26 .. v26}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v14

    .line 953
    :cond_24
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 954
    .line 955
    .line 956
    move-result v15

    .line 957
    if-nez v15, :cond_25

    .line 958
    .line 959
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    :cond_25
    if-lez v11, :cond_26

    .line 963
    .line 964
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v14

    .line 968
    check-cast v14, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 969
    .line 970
    invoke-virtual {v14}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ProductDetails;

    .line 971
    .line 972
    .line 973
    move-result-object v14

    .line 974
    invoke-virtual {v14}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v14

    .line 978
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v14

    .line 985
    check-cast v14, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 986
    .line 987
    invoke-virtual {v14}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ProductDetails;

    .line 988
    .line 989
    .line 990
    move-result-object v14

    .line 991
    invoke-virtual {v14}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v14

    .line 995
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    :cond_26
    add-int/lit8 v11, v11, 0x1

    .line 999
    .line 1000
    goto/16 :goto_b

    .line 1001
    .line 1002
    :cond_27
    invoke-virtual {v10, v13, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1003
    .line 1004
    .line 1005
    const-string v4, "AUTO_PAY_BALANCE_THRESHOLD_LIST"

    .line 1006
    .line 1007
    invoke-virtual {v10, v4, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1011
    .line 1012
    .line 1013
    move-result v4

    .line 1014
    if-nez v4, :cond_28

    .line 1015
    .line 1016
    invoke-virtual {v10, v12, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1017
    .line 1018
    .line 1019
    :cond_28
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v2

    .line 1023
    if-nez v2, :cond_29

    .line 1024
    .line 1025
    invoke-virtual {v10, v9, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1026
    .line 1027
    .line 1028
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v2

    .line 1032
    if-nez v2, :cond_2a

    .line 1033
    .line 1034
    invoke-virtual {v10, v6, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v10, v5, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1038
    .line 1039
    .line 1040
    :cond_2a
    :goto_d
    invoke-virtual {v10, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v0

    .line 1044
    move-object/from16 v1, p0

    .line 1045
    .line 1046
    if-eqz v0, :cond_2c

    .line 1047
    .line 1048
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwww:Z

    .line 1049
    .line 1050
    if-eqz v0, :cond_2b

    .line 1051
    .line 1052
    goto :goto_e

    .line 1053
    :cond_2b
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 1054
    .line 1055
    const/16 v2, 0x15

    .line 1056
    .line 1057
    const/4 v3, 0x2

    .line 1058
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 1062
    .line 1063
    .line 1064
    return-object v0

    .line 1065
    :cond_2c
    :goto_e
    const-string v0, "skuPackageName"

    .line 1066
    .line 1067
    if-eqz v19, :cond_2d

    .line 1068
    .line 1069
    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v2

    .line 1073
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v2

    .line 1077
    if-nez v2, :cond_2d

    .line 1078
    .line 1079
    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/SkuDetails;->Wwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v2

    .line 1083
    invoke-virtual {v10, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    :goto_f
    const/4 v5, 0x1

    .line 1087
    :goto_10
    const/4 v7, 0x0

    .line 1088
    goto :goto_11

    .line 1089
    :cond_2d
    if-eqz v20, :cond_2e

    .line 1090
    .line 1091
    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ProductDetails;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v2

    .line 1099
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v2

    .line 1103
    if-nez v2, :cond_2e

    .line 1104
    .line 1105
    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ProductDetails;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v2

    .line 1109
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    invoke-virtual {v10, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    goto :goto_f

    .line 1117
    :cond_2e
    const/4 v5, 0x0

    .line 1118
    goto :goto_10

    .line 1119
    :goto_11
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v0

    .line 1123
    if-nez v0, :cond_2f

    .line 1124
    .line 1125
    const-string v0, "accountName"

    .line 1126
    .line 1127
    invoke-virtual {v10, v0, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    if-nez v0, :cond_30

    .line 1135
    .line 1136
    const-string v0, "Activity\'s intent is null."

    .line 1137
    .line 1138
    move-object/from16 v8, v30

    .line 1139
    .line 1140
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    goto :goto_12

    .line 1144
    :cond_30
    move-object/from16 v8, v30

    .line 1145
    .line 1146
    const-string v2, "PROXY_PACKAGE"

    .line 1147
    .line 1148
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v4

    .line 1152
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1153
    .line 1154
    .line 1155
    move-result v4

    .line 1156
    if-nez v4, :cond_31

    .line 1157
    .line 1158
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    const-string v2, "proxyPackage"

    .line 1163
    .line 1164
    invoke-virtual {v10, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    :try_start_0
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 1168
    .line 1169
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    const/4 v4, 0x0

    .line 1174
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    .line 1180
    move-object/from16 v2, v25

    .line 1181
    .line 1182
    :try_start_1
    invoke-virtual {v10, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1183
    .line 1184
    .line 1185
    goto :goto_12

    .line 1186
    :catch_0
    move-object/from16 v2, v25

    .line 1187
    .line 1188
    :catch_1
    const-string v0, "package not found"

    .line 1189
    .line 1190
    invoke-virtual {v10, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    :cond_31
    :goto_12
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwww:Z

    .line 1194
    .line 1195
    if-eqz v0, :cond_32

    .line 1196
    .line 1197
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1198
    .line 1199
    .line 1200
    move-result v0

    .line 1201
    if-nez v0, :cond_32

    .line 1202
    .line 1203
    const/16 v13, 0x11

    .line 1204
    .line 1205
    :goto_13
    move v2, v13

    .line 1206
    goto :goto_14

    .line 1207
    :cond_32
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww:Z

    .line 1208
    .line 1209
    if-eqz v0, :cond_33

    .line 1210
    .line 1211
    if-eqz v5, :cond_33

    .line 1212
    .line 1213
    const/16 v13, 0xf

    .line 1214
    .line 1215
    goto :goto_13

    .line 1216
    :cond_33
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 1217
    .line 1218
    if-eqz v0, :cond_34

    .line 1219
    .line 1220
    const/16 v2, 0x9

    .line 1221
    .line 1222
    goto :goto_14

    .line 1223
    :cond_34
    const/4 v13, 0x6

    .line 1224
    goto :goto_13

    .line 1225
    :goto_14
    new-instance v0, Lcom/android/billingclient/api/zzar;

    .line 1226
    .line 1227
    move-object/from16 v5, p2

    .line 1228
    .line 1229
    move-object v6, v10

    .line 1230
    move-object/from16 v3, v21

    .line 1231
    .line 1232
    move-object/from16 v4, v23

    .line 1233
    .line 1234
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzar;-><init>(Lcom/android/billingclient/api/BillingClientImpl;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)V

    .line 1235
    .line 1236
    .line 1237
    iget-object v15, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 1238
    .line 1239
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v16

    .line 1243
    const-wide/16 v12, 0x1388

    .line 1244
    .line 1245
    const/4 v14, 0x0

    .line 1246
    move-object v11, v0

    .line 1247
    invoke-static/range {v11 .. v16}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v0

    .line 1251
    goto :goto_15

    .line 1252
    :cond_35
    move-object v3, v6

    .line 1253
    move-object/from16 v24, v8

    .line 1254
    .line 1255
    move-object v7, v10

    .line 1256
    move-object v4, v11

    .line 1257
    move-object v8, v14

    .line 1258
    new-instance v9, Lcom/android/billingclient/api/zzq;

    .line 1259
    .line 1260
    invoke-direct {v9, v1, v3, v4}, Lcom/android/billingclient/api/zzq;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    .line 1262
    .line 1263
    iget-object v13, v1, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 1264
    .line 1265
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v14

    .line 1269
    const-wide/16 v10, 0x1388

    .line 1270
    .line 1271
    const/4 v12, 0x0

    .line 1272
    invoke-static/range {v9 .. v14}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    :goto_15
    if-nez v0, :cond_36

    .line 1277
    .line 1278
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 1279
    .line 1280
    const/16 v2, 0x19

    .line 1281
    .line 1282
    const/4 v3, 0x2

    .line 1283
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 1287
    .line 1288
    .line 1289
    return-object v0

    .line 1290
    :catch_2
    move-exception v0

    .line 1291
    goto/16 :goto_1c

    .line 1292
    .line 1293
    :catch_3
    move-exception v0

    .line 1294
    goto/16 :goto_1d

    .line 1295
    .line 1296
    :catch_4
    move-exception v0

    .line 1297
    goto/16 :goto_1d

    .line 1298
    .line 1299
    :cond_36
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1300
    .line 1301
    const-wide/16 v3, 0x1388

    .line 1302
    .line 1303
    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v0

    .line 1307
    move-object v2, v0

    .line 1308
    check-cast v2, Landroid/os/Bundle;

    .line 1309
    .line 1310
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 1311
    .line 1312
    .line 1313
    move-result v0

    .line 1314
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v3

    .line 1318
    if-eqz v0, :cond_3c

    .line 1319
    .line 1320
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1321
    .line 1322
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1323
    .line 1324
    .line 1325
    const-string v5, "Unable to buy item, Error response code: "

    .line 1326
    .line 1327
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v4

    .line 1337
    invoke-static {v8, v4}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    .line 1339
    .line 1340
    invoke-static {v0, v3}, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v3
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1344
    if-nez v2, :cond_37

    .line 1345
    .line 1346
    :goto_16
    const/4 v4, 0x1

    .line 1347
    const/4 v5, 0x1

    .line 1348
    goto :goto_18

    .line 1349
    :cond_37
    :try_start_3
    const-string v0, "LOG_REASON"

    .line 1350
    .line 1351
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v0

    .line 1355
    if-nez v0, :cond_38

    .line 1356
    .line 1357
    goto :goto_16

    .line 1358
    :cond_38
    instance-of v4, v0, Ljava/lang/Integer;

    .line 1359
    .line 1360
    if-eqz v4, :cond_39

    .line 1361
    .line 1362
    check-cast v0, Ljava/lang/Integer;

    .line 1363
    .line 1364
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1365
    .line 1366
    .line 1367
    move-result v0

    .line 1368
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzkg;->zza(I)I

    .line 1369
    .line 1370
    .line 1371
    move-result v5

    .line 1372
    const/4 v4, 0x1

    .line 1373
    goto :goto_18

    .line 1374
    :catchall_0
    move-exception v0

    .line 1375
    goto :goto_17

    .line 1376
    :cond_39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v0

    .line 1380
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v0

    .line 1384
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1387
    .line 1388
    .line 1389
    const-string v5, "Unexpected type for bundle log reason: "

    .line 1390
    .line 1391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v0

    .line 1401
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1402
    .line 1403
    .line 1404
    goto :goto_16

    .line 1405
    :goto_17
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v0

    .line 1409
    const-string v4, "Failed to get log reason from bundle: "

    .line 1410
    .line 1411
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v0

    .line 1415
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v0

    .line 1419
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1420
    .line 1421
    .line 1422
    goto :goto_16

    .line 1423
    :goto_18
    if-ne v5, v4, :cond_3a

    .line 1424
    .line 1425
    const/16 v5, 0x17

    .line 1426
    .line 1427
    :cond_3a
    if-nez v2, :cond_3b

    .line 1428
    .line 1429
    :goto_19
    move-object v10, v7

    .line 1430
    :goto_1a
    const/4 v2, 0x2

    .line 1431
    goto :goto_1b

    .line 1432
    :cond_3b
    :try_start_5
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    .line 1433
    .line 1434
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1438
    goto :goto_1a

    .line 1439
    :catchall_1
    move-exception v0

    .line 1440
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v0

    .line 1444
    const-string v2, "Failed to get additional log details from bundle: "

    .line 1445
    .line 1446
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v0

    .line 1450
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    .line 1456
    .line 1457
    goto :goto_19

    .line 1458
    :goto_1b
    invoke-virtual {v1, v5, v2, v3, v10}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 1462
    .line 1463
    .line 1464
    return-object v3

    .line 1465
    :cond_3c
    new-instance v0, Landroid/content/Intent;

    .line 1466
    .line 1467
    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 1468
    .line 1469
    move-object/from16 v7, p1

    .line 1470
    .line 1471
    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1472
    .line 1473
    .line 1474
    move-object/from16 v3, v24

    .line 1475
    .line 1476
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v2

    .line 1480
    check-cast v2, Landroid/app/PendingIntent;

    .line 1481
    .line 1482
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1486
    .line 1487
    .line 1488
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 1489
    .line 1490
    return-object v0

    .line 1491
    :goto_1c
    const-string v2, "Exception while launching billing flow. Try to reconnect"

    .line 1492
    .line 1493
    invoke-static {v8, v2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1494
    .line 1495
    .line 1496
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 1497
    .line 1498
    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v0

    .line 1502
    const/4 v3, 0x5

    .line 1503
    const/4 v4, 0x2

    .line 1504
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 1508
    .line 1509
    .line 1510
    return-object v2

    .line 1511
    :goto_1d
    const-string v2, "Time out while launching billing flow. Try to reconnect"

    .line 1512
    .line 1513
    invoke-static {v8, v2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1514
    .line 1515
    .line 1516
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 1517
    .line 1518
    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v0

    .line 1522
    const/4 v3, 0x4

    .line 1523
    const/4 v4, 0x2

    .line 1524
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O0000000(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 1528
    .line 1529
    .line 1530
    return-object v2

    .line 1531
    :cond_3d
    move v4, v9

    .line 1532
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Www:Lcom/android/billingclient/api/BillingResult;

    .line 1533
    .line 1534
    const/16 v2, 0xc

    .line 1535
    .line 1536
    invoke-virtual {v1, v2, v4, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 1537
    .line 1538
    .line 1539
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzba;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return v3

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .locals 9
    .annotation build Lcom/android/billingclient/api/zzh;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-string v0, "BillingClient"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0xd

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "Service disconnected."

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwww:Z

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const-string p1, "Current client doesn\'t support get billing config."

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 37
    .line 38
    const/16 v0, 0x20

    .line 39
    .line 40
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance v3, Lcom/android/billingclient/api/zzv;

    .line 48
    .line 49
    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzv;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    .line 50
    .line 51
    .line 52
    new-instance v6, Lcom/android/billingclient/api/zzw;

    .line 53
    .line 54
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/zzw;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllllll()Landroid/os/Handler;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const-wide/16 v4, 0x7530

    .line 66
    .line 67
    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkk()Lcom/android/billingclient/api/BillingResult;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/16 v0, 0x19

    .line 78
    .line 79
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v2, Lcom/android/billingclient/api/zzag;

    .line 23
    .line 24
    invoke-direct {v2, p0, p1, p2}, Lcom/android/billingclient/api/zzag;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lcom/android/billingclient/api/zzah;

    .line 28
    .line 29
    invoke-direct {v5, p0, p2, p1}, Lcom/android/billingclient/api/zzah;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllllll()Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const-wide/16 v3, 0x7530

    .line 41
    .line 42
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkk()Lcom/android/billingclient/api/BillingResult;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/16 v2, 0x19

    .line 53
    .line 54
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string p1, "BillingClient"

    .line 29
    .line 30
    const-string v0, "Please provide a valid purchase token."

    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 36
    .line 37
    const/16 v0, 0x1a

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    sget-object p1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 51
    .line 52
    const/16 v0, 0x1b

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    new-instance v2, Lcom/android/billingclient/api/zzt;

    .line 62
    .line 63
    invoke-direct {v2, p0, p2, p1}, Lcom/android/billingclient/api/zzt;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)V

    .line 64
    .line 65
    .line 66
    new-instance v5, Lcom/android/billingclient/api/zzu;

    .line 67
    .line 68
    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzu;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllllll()Landroid/os/Handler;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkk()Ljava/util/concurrent/ExecutorService;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const-wide/16 v3, 0x7530

    .line 80
    .line 81
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkk()Lcom/android/billingclient/api/BillingResult;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/16 v0, 0x19

    .line 92
    .line 93
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->O00000000(IILcom/android/billingclient/api/BillingResult;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method
