.class public final Lio/flutter/plugins/imagepicker/Messages$SourceSpecification$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private camera:Lio/flutter/plugins/imagepicker/Messages$SourceCamera;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private type:Lio/flutter/plugins/imagepicker/Messages$SourceType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
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
.method public build()Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification$Builder;->type:Lio/flutter/plugins/imagepicker/Messages$SourceType;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->setType(Lio/flutter/plugins/imagepicker/Messages$SourceType;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification$Builder;->camera:Lio/flutter/plugins/imagepicker/Messages$SourceCamera;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->setCamera(Lio/flutter/plugins/imagepicker/Messages$SourceCamera;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setCamera(Lio/flutter/plugins/imagepicker/Messages$SourceCamera;)Lio/flutter/plugins/imagepicker/Messages$SourceSpecification$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$SourceCamera;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification$Builder;->camera:Lio/flutter/plugins/imagepicker/Messages$SourceCamera;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(Lio/flutter/plugins/imagepicker/Messages$SourceType;)Lio/flutter/plugins/imagepicker/Messages$SourceSpecification$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$SourceType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification$Builder;->type:Lio/flutter/plugins/imagepicker/Messages$SourceType;

    .line 2
    .line 3
    return-object p0
.end method
