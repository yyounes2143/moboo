.class public final Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/fluttercandies/photo_manager/permission/PermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->Wwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J9\u0010\n\u001a\u00020\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsListener;",
        "",
        "",
        "needPermissions",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/util/List;)V",
        "deniedPermissions",
        "grantedPermissions",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
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
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;


# direct methods
.method public constructor <init>(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    .line 4
    .line 5
    iput p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 8
    .line 9
    iget-boolean p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 10
    .line 11
    invoke-virtual {p1, p2, p3}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
