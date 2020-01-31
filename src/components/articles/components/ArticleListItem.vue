<template>
  <article class="article">
    <header>
      <div class="mdb-feed">
        <div class="news">
          <div class="label">
            <img
              :src="items.avatar"
              class="rounded-circle z-depth-1-half"
            />
          </div>
          <div class="label-info">
            <div class="brief">
              <router-link class="name" to="/">{{ items.author }}</router-link>
              <span class="date date-label">{{ items.create }}</span>
            </div>
          </div>
        </div>
      </div>
    </header>
    <h2>{{ items.header }}</h2>
    <router-link v-for="tag in items.tags" :to="tag.url">
      <mdb-badge color="default">{{ tag.name }}</mdb-badge>
    </router-link>
    <section>
      <figure class="figure text-center">
        <img
          :src="items.picture_url"
          alt
          srcset
          class="figure-img img-fluid z-depth-1"
        />
        <figcaption class="figure-caption">{{ items.picture_caprion }}</figcaption>
      </figure>
      <br/>
      <span>
      {{ items.description }}
      </span>
    </section>
    <router-link
    class="btn btn-default waves-effect waves-light" :to="items.url">
      Читать дальше →
    </router-link>
    <mdb-footer color="default-color article-footer">
      <mdb-container>
        <mdb-row>
          <mdb-col>
            <a class="like">
              <mdb-icon icon="heart" />
              <span>{{ items.likes }}</span>
            </a>
          </mdb-col>
          <mdb-col class="like text-center">
            <mdb-icon icon="eye" />
            <span>{{ items.view }}</span>
          </mdb-col>
          <mdb-col class="text-right">
            <a class="like">
              <mdb-icon icon="comment" />
              <span>{{ items.comments }}</span>
            </a>
          </mdb-col>
        </mdb-row>
      </mdb-container>
    </mdb-footer>
  </article>
</template>

<script>
import {
  mdbBadge, mdbFooter, mdbIcon, mdbContainer, mdbRow, mdbCol,
} from '../../mdbvue';

export default {
  data() {
    return {
        items: 
        {
            header: 'Генерация подземелий в Diablo 1', 
            avatar: 'https://mdbootstrap.com/img/Photos/Avatars/avatar-1-mini.jpg',
            author: 'John Doe',
            create: '1 hour ago',
            tags: [
                {name: 'Game development', url: '/article/1',},
            ],
            picture_url: 'https://hsto.org/getpro/habr/post_images/7ac/daa/380/7acdaa38058e3058ff1a6ba9a7ca0ce2.png',
            picture_caprion: 'Caption',
            description: 'Diablo 1 — это классический roguelike 1996 года в жанре hack and slash. Это была одна из первых успешных попыток познакомить широкие массы с roguelike, которые до этого имели нишевую графику в виде ASCII-арта. Игра породила несколько сиквелов и множество имитаций.',
            url: '/',
            likes: 5,
            view: 4,
            comments: 6,
        },
   };
  },
  components: {
    mdbBadge,
    mdbFooter,
    mdbIcon,
    mdbContainer,
    mdbRow,
    mdbCol,
  },
};
</script>

<style scoped>
.label-info {
  margin-left: 1em;
  margin-top: 0.5em;
}
.date-label {
  margin-left: 1em;
}
.article-footer {
  padding: 0.5em;
}
.article {
  margin-bottom: 3em;
}
.like i {
    margin-right: 0.5em;
}
</style>
