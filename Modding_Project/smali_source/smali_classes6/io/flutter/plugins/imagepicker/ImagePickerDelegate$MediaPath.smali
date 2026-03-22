.class public Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/ImagePickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaPath"
.end annotation


# instance fields
.field final mimeType:Ljava/lang/String;

.field final path:Ljava/lang/String;

.field final synthetic this$0:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/imagepicker/ImagePickerDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;->path:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;->mimeType:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
