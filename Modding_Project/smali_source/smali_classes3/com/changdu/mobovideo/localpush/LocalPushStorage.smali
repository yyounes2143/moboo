.class public final Lcom/changdu/mobovideo/localpush/LocalPushStorage;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/LocalPushStorage;",
        "",
        "<init>",
        "()V",
        "",
        "key",
        "defaultValue",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "value",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Lcom/changdu/mobovideo/utils/ALocalCache;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcom/changdu/mobovideo/utils/ALocalCache;",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/LocalPushStorage;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/mobovideo/localpush/LocalPushStorage;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStorage;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :catchall_0
    :cond_1
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-object p1

    .line 15
    :catchall_0
    :cond_1
    :goto_0
    return-object p2
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/utils/AppBizDataManager;->INSTANCE:Lcom/changdu/mobovideo/utils/AppBizDataManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/mobovideo/utils/AppBizDataManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
