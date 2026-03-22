.class public abstract Lcom/changdu/component/pay/google/localdb/LocalBillingDb;
.super Landroidx/room/RoomDatabase;
.source "Proguard"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/changdu/component/pay/google/localdb/CdSkuDetails;,
        Lcom/changdu/component/pay/google/localdb/PurchaseOrder;
    }
    exportSchema = true
    version = 0x5
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/changdu/component/pay/google/localdb/PurchaseTypeConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/pay/google/localdb/LocalBillingDb$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/changdu/component/pay/google/localdb/LocalBillingDb;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "cdSkuDetailsDao",
        "Lcom/changdu/component/pay/google/localdb/CdSkuDetailsDao;",
        "purchaseOrderDao",
        "Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao;",
        "Companion",
        "pay-google_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/changdu/component/pay/google/localdb/LocalBillingDb$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DATABASE_NAME:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile INSTANCE:Lcom/changdu/component/pay/google/localdb/LocalBillingDb;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb;->Companion:Lcom/changdu/component/pay/google/localdb/LocalBillingDb$Companion;

    .line 8
    .line 9
    const-string v0, "play_billing_purchase_db"

    .line 10
    .line 11
    sput-object v0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb;->DATABASE_NAME:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getDATABASE_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb;->DATABASE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/changdu/component/pay/google/localdb/LocalBillingDb;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb;->INSTANCE:Lcom/changdu/component/pay/google/localdb/LocalBillingDb;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/changdu/component/pay/google/localdb/LocalBillingDb;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb;->INSTANCE:Lcom/changdu/component/pay/google/localdb/LocalBillingDb;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public abstract cdSkuDetailsDao()Lcom/changdu/component/pay/google/localdb/CdSkuDetailsDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract purchaseOrderDao()Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
