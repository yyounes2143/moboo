.class public final Lcom/changdu/component/pay/google/G;
.super Lkotlin/jvm/internal/Lambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/changdu/component/pay/google/G;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/pay/google/G;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/pay/google/G;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/pay/google/G;->a:Lcom/changdu/component/pay/google/G;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb;->Companion:Lcom/changdu/component/pay/google/localdb/LocalBillingDb$Companion;

    .line 2
    .line 3
    sget-object v1, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb$Companion;->getInstance(Landroid/content/Context;)Lcom/changdu/component/pay/google/localdb/LocalBillingDb;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
