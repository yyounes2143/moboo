.class public final Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ%\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J+\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00102\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u001f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010\"\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\"\u0010#J\u001b\u0010&\u001a\u00020\u001f2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00180$\u00a2\u0006\u0004\u0008&\u0010\'J\u001d\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u00102\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\u001d\u0010.\u001a\u00020-2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u00080\u0010\u0003R\u0018\u00102\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u00101R\u0018\u0010\u001e\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u00104R$\u00107\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u00128\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008 \u00106\u001a\u0004\u00087\u00108R\u0014\u0010;\u001a\u0002098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010:R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00180$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u001a\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00180$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010=R\u001a\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00180$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010=R$\u0010E\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010A\u001a\u0004\u0008<\u0010B\"\u0004\u0008C\u0010D\u00a8\u0006F"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "",
        "<init>",
        "()V",
        "Landroid/app/Activity;",
        "activity",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/app/Activity;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/app/Activity;",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsListener;",
        "listener",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "Landroid/content/Context;",
        "applicationContext",
        "",
        "requestType",
        "",
        "mediaLocation",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;IZ)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "requestCode",
        "",
        "",
        "permissions",
        "",
        "grantResults",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(I[Ljava/lang/String;[I)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "context",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;)Z",
        "",
        "permission",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/util/List;)V",
        "type",
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "resultHandler",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(ILcom/fluttercandies/photo_manager/util/ResultHandler;)V",
        "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/app/Activity;",
        "mActivity",
        "Landroid/app/Application;",
        "Landroid/app/Application;",
        "value",
        "Z",
        "isRequesting",
        "()Z",
        "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;",
        "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;",
        "delegate",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/List;",
        "needToRequestPermissionsList",
        "deniedPermissionsList",
        "grantedPermissionsList",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsListener;",
        "()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)V",
        "permissionsListener",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Companion:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application;

    .line 12
    .line 13
    return-object p0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)V
    .locals 0
    .param p1    # Lcom/fluttercandies/photo_manager/permission/PermissionsListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    .line 2
    .line 3
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 7
    .line 8
    check-cast p1, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
    .locals 0
    .param p1    # Lcom/fluttercandies/photo_manager/permission/PermissionsListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 17
    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;IZ)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ILcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 2
    .param p2    # Lcom/fluttercandies/photo_manager/util/ResultHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/app/Application;ILcom/fluttercandies/photo_manager/util/ResultHandler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x10000000

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const/high16 v1, 0x800000

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v1, "android.intent.category.DEFAULT"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    const-string v3, "package"

    .line 37
    .line 38
    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I[Ljava/lang/String;[I)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
    .locals 11
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0xbb9

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0xbba

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    move-object v3, p0

    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    array-length v0, p2

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_3

    .line 16
    .line 17
    aget-object v3, p2, v2

    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v5, "Returned permissions: "

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Lcom/fluttercandies/photo_manager/util/LogUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    aget v3, p3, v2

    .line 40
    .line 41
    const/4 v4, -0x1

    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    iget-object v3, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 45
    .line 46
    aget-object v4, p2, v2

    .line 47
    .line 48
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    if-nez v3, :cond_2

    .line 53
    .line 54
    iget-object v3, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 55
    .line 56
    aget-object v4, p2, v2

    .line 57
    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-string v0, "dealResult: "

    .line 65
    .line 66
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "  permissions: "

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "  grantResults: "

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v3, "  deniedPermissionsList: "

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v3, "  grantedPermissionsList: "

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    iget-object v2, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    .line 162
    .line 163
    iget-object v4, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application;

    .line 164
    .line 165
    iget-object v7, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 166
    .line 167
    iget-object v8, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 168
    .line 169
    iget-object v9, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 170
    .line 171
    move-object v3, p0

    .line 172
    move v10, p1

    .line 173
    move-object v5, p2

    .line 174
    move-object v6, p3

    .line 175
    invoke-virtual/range {v2 .. v10}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;[Ljava/lang/String;[ILjava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_4
    move-object v3, p0

    .line 180
    iget-object p1, v3, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 181
    .line 182
    check-cast p1, Ljava/util/Collection;

    .line 183
    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-nez p1, :cond_5

    .line 189
    .line 190
    iget-object p1, v3, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    .line 191
    .line 192
    iget-object p2, v3, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 193
    .line 194
    iget-object p3, v3, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 195
    .line 196
    iget-object v0, v3, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 197
    .line 198
    invoke-interface {p1, p2, p3, v0}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_5
    iget-object p1, v3, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    .line 203
    .line 204
    iget-object p2, v3, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 210
    .line 211
    .line 212
    iput-boolean v1, v3, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 213
    .line 214
    return-object v3
.end method
