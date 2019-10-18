.class public Lcom/miui/aod/services/WrappedDreamService;
.super Landroid/service/dreams/DreamService;
.source "WrappedDreamService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setDebug(Z)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setDozeScreenBrightness(I)V

    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setDozeScreenState(I)V

    return-void
.end method

.method public setWindowless(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setWindowless(Z)V

    return-void
.end method

.method public startDozing()V
    .locals 0

    invoke-super {p0}, Landroid/service/dreams/DreamService;->startDozing()V

    return-void
.end method
