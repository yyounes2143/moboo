.class final synthetic Lcom/tencent/liteav/sdkcommon/l;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/sdkcommon/g;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/sdkcommon/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/l;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/tencent/liteav/sdkcommon/g;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/sdkcommon/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/liteav/sdkcommon/l;-><init>(Lcom/tencent/liteav/sdkcommon/g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/l;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->k:Landroid/widget/ScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x82

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
