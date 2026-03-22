.class public final synthetic Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:I

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    .line 5
    .line 6
    iput p2, p0, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;ILandroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
