# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-verbose
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

-keepclasseswithmembers class * {
    native <methods>;
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}

-keep class **.R$*
-keepattributes *Annotation*

-keepclassmembers class * extends com.actionbarsherlock.ActionBarSherlock {
    <init>(android.app.Activity, int);
}

#forbid warning
-dontwarn com.flurry.**
-dontwarn com.devsmart.**
-dontwarn com.showselfu.**
-dontwarn org.apache.**
-dontwarn cn.waps.**

# support v4
-keep class android.support.v4.app.** { *; }
-keep interface android.support.v4.app.** { *; }

#alipay

-keep class com.alipay.android.app.IAlixPay{*;}
-keep class com.alipay.android.app.IAlixPay$Stub{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback$Stub{*;}
-keep class com.alipay.sdk.app.PayTask{ public *;}
-keep class com.alipay.sdk.app.AuthTask{ public *;}
-keep class com.alipay.mobilesecuritysdk.*
-keep class com.ut.*

#baidu:locsdk/cyberplayer-sdk/push
-dontwarn com.baidu.**
-keep class com.baidu.** { *; }
-keep interface com.baidu.** { *; }

#appoffer
-keep class cn.waps.** { *; }
-keep interface cn.waps.** { *; }

#ccsdk
-keep class com.dreamwin.** { *; }
-keep interface com.dreamwin.** { *; }

#cwac-sackofviewsadapter
-keep class com.commonsware.cwac.sacklist.** { *; }
-keep interface com.commonsware.cwac.sacklist.** { *; }

#showselfu
-keep class com.showselfu.** { *; }
-keep interface com.showselfu.** { *; }

#smack
-keep class com.kenai.jbosh.** { *; }
-keep interface com.kenai.jbosh.** { *; }
-keep class com.novell.sasl.client.** { *; }
-keep interface com.novell.sasl.client.** { *; }
-keep class de.measite.smack.** { *; }
-keep interface de.measite.smack.** { *; }
-keep class org.apache.harmony.javax.security.** { *; }
-keep interface org.apache.harmony.javax.security.** { *; }
-keep class org.apache.qpid.management.common.sasl.** { *; }
-keep interface org.apache.qpid.management.common.sasl.** { *; }
-keep class org.jivesoftware.** { *; }
-keep interface org.jivesoftware.** { *; }
-keep class org.xbill.DNS.** { *; }
-keep interface org.xbill.DNS.** { *; }

#piczoom
-keep class com.showself.utils.zoom.** { *; }
-keep interface com.showself.utils.zoom.** { *; }

#volley
-keep class com.android.volley.** { *; }
-keep interface com.android.volley.** { *; }

#wheelview
-keep class com.showself.wheel.** { *; }
-keep interface com.showself.wheel.** { *; }

#flurry
-keep class com.flurry.** { *; }
-keep interface com.flurry.**  { *; }

#horizontallv
-keep class com.commonsware.cwac.** { *; }
-keep interface com.commonsware.cwac.** { *; }
-keep class com.devsmart.android.** { *; }
-keep interface com.devsmart.android.** { *; }

#libammsdk

-dontwarn com.tencent.mm.**
-keep class com.tencent.mm.** { *; }
-keep interface com.tencent.mm.** { *; }
-keep class com.tencent.mm.sdk.openapi.** {*; }

#listview_anima_lib
-keep class com.haarman.listviewanimations.** { *; }
-keep interface com.haarman.listviewanimations.** { *; }

#sunjce_provider

-dontwarn com.sun.crypto.provider.**
-keep class om.sun.crypto.provider.** { *; }

#mta-sdk
-keep class com.tencent.stat.** { *; }
-keep interface com.tencent.stat.** { *; }

#nineoldandroids
-keep class com.nineoldandroids.** { *; }
-keep interface com.nineoldandroids.** { *; }

#open sdk
-keep class com.tencent.** { *; }
-keep interface com.tencent.** { *; }

#stickylistheaders
-keep class com.emilsjolander.components.stickylistheaders.** { *; }
-keep interface com.emilsjolander.components.stickylistheaders.** { *; }

#apache
-keep class org.apache.** { *; }
-keep interface org.apache.** { *; }

#game
-keep class org.cocos2dx.** { *; }
-keep interface org.cocos2dx.** { *; }
-keep class com.google.** { *; }
-keep interface com.google.** { *; }
-keep class com.enmoli.poker.** { *; }
-keep interface com.enmoli.poker.** { *; }
-dontoptimize
-dontpreverify

-dontwarn cn.jpush.**
-keep class cn.jpush.** { *; }

-dontwarn cn.jiguang.**
-keep class cn.jiguang.** { *; }

-keep class cn.sharesdk.**{*;}
-keep class com.sina.**{*;}
-keep class **.R$* {*;}
-keep class **.R{*;}

-keep class com.mob.**{*;}
-dontwarn com.mob.**
-dontwarn cn.sharesdk.**
-dontwarn **.R$*

-dontskipnonpubliclibraryclassmembers

-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-ignorewarnings
-verbose
-dontoptimize
-dontwarn

-keep class com.zego.** {
  *;
}
-keep class com.ksyun.** {
  *;
}

-keep class com.ksy.statlibrary.** {
  *;
}

-keep class cn.shuzilm.core.Main {
public *;
}
-keepclasseswithmembernames class cn.shuzilm.core.Main {
native <methods>;
}

# EventBus
-keepattributes *Annotation*
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }

#glide
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public class * extends com.bumptech.glide.module.AppGlideModule
-keep public enum com.bumptech.glide.load.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}

#资源包 工具类
-keep class com.enmoli.**{*;}
-dontwarn com.enmoli.**
-keep class com.fasterxml.jackson.databind.**{*;}
-dontwarn com.fasterxml.jackson.databind.ext.**
-keep class com.fasterxml.jackson.annotation.**{*;}
-keep class com.showself.show.rsparser.** { *; }
#资源包对应转换类
-keep class com.showself.domain.resource.** { *; }

#PK
-keep class com.showself.show.view.PkViewWrapper {*;}
#宝箱
-keep class com.showself.show.bean.room.box.** {*;}

#一键登录
-keep class cn.com.chinatelecom.gateway.lib.** {*;}
-keep class com.unicom.xiaowo.login.** {*;}
-keep class com.cmic.sso.sdk.** {*;}
-keep class com.mobile.auth.** {*;}
-keep class android.support.v4.** {*;}
-keep class org.json.**{*;}
-keep class com.alibaba.fastjson.** {*;}


#相芯
-keep class com.faceunity.wrapper.faceunity {*;}
-keep class com.faceunity.wrapper.faceunity$* {*;}

#即构
-keep class com.zego.**{*;}


# Room 数据库
-dontwarn android.arch.util.paging.CountedDataSource
-dontwarn android.arch.persistence.room.paging.LimitOffsetDataSource
-keep class com.showself.domain.db.**

#网络诊断
-keep class com.showself.Task.** { *; }
-keep class com.netease.LDNetDiagnoService.** { *; }

-dontwarn com.ksyun.media.**
-keep class com.ksyun.media.** {
	*;
}
#svgaplayer 播放svga图片框架
-keep class com.squareup.wire.** { *; }
-keep class com.opensource.svgaplayer.proto.** { *; }