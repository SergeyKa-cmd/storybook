<template>
  <mdb-container>

      <mdb-row>
          <h3>Комментарии (5)</h3>

      </mdb-row>
      <hr/>
      <mdb-row>
          <mdb-col>
    <div class="mdb-feed">
      <div class="news">
        <div class="label">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-1-mini.jpg" class="rounded-circle z-depth-1-half"/>
        </div>
        <div class="excerpt">
          <div class="brief">
            <a class="name">John Doe</a> added you as a friend
            <div class="date">1 hour ago</div>
          </div>
          <div class="feed-footer">
            <a class="like">
              <mdb-icon icon="heart"/>
              <span>5 likes</span>
            </a>
          </div>
        </div>
      </div>
      <div class="news">
        <div class="label">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(17)-mini.jpg" class="rounded-circle z-depth-1-half"/>
        </div>
        <div class="excerpt">
          <div class="brief">
            <a class="name">Anna Smith</a> added <a>2 new illustrations</a>
            <div class="date">4 hours ago</div>
          </div>
          <div class="added-images">
            <img src="https://mdbootstrap.com/img/Photos/Others/images/71.jpg" class="z-depth-1 rounded mb-md-0 mb-2"/>
            <img src="https://mdbootstrap.com/img/Photos/Others/images/74.jpg" class="z-depth-1 rounded"/>
          </div>
          <div class="feed-footer">
            <a class="like">
            <mdb-icon icon="heart"/>
              <span>18 likes</span>
            </a>
          </div>
        </div>
      </div>
      <div class="news">
        <div class="label">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(9)-mini.jpg" class="rounded-circle z-depth-1-half"/>
        </div>
        <div class="excerpt">
          <div class="brief">
            <a class="name">Danny Moore</a> added you as a friend
            <div class="date">7 hours ago</div>
          </div>
          <div class="feed-footer">
            <a class="like">
            <mdb-icon icon="heart"/>
              <span>11 likes</span>
            </a>
          </div>
        </div>
      </div>
      <div class="news">
        <div class="label">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(18)-mini.jpg" class="rounded-circle z-depth-1-half"/>
        </div>
        <div class="excerpt">
          <div class="brief">
            <a class="name">Lili Rose</a> posted on her page
            <div class="date">2 days ago</div>
          </div>
          <div class="added-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
              Vero inventore, iste quas libero eius? Vitae sint neque animi alias sunt
              dolor, accusantium ducimus, non placeat voluptate.</div>
          <div class="feed-footer">
            <a class="like">
            <mdb-icon icon="heart"/>
              <span>7 likes</span>
            </a>
          </div>
        </div>
      </div>
      <div class="news">
        <div class="label">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20)-mini.jpg" class="rounded-circle z-depth-1-half"/>
        </div>
        <div class="excerpt">
          <div class="brief">
            <a class="name">Kate Harrison</a> added <a> 2 new photos</a> of you
            <div class="date">3 days ago</div>
          </div>
          <div class="added-images">
            <img src="https://mdbootstrap.com/img/Photos/Others/images/29.jpg" class="z-depth-1 rounded mb-md-0 mb-2"/>
            <img src="https://mdbootstrap.com/img/Photos/Others/images/31.jpg" class="z-depth-1 rounded"/>
          </div>
          <div class="feed-footer">
            <a class="like">
            <mdb-icon icon="heart"/>
              <span>53 likes</span>
            </a>
          </div>
        </div>
      </div>
    </div>
    </mdb-col>
    </mdb-row>
  </mdb-container>
</template>

<script>
import { mdbContainer, mdbIcon, mdbRow } from '../../mdbvue';

export default {
  name: 'SocialPage',
  components: {
    mdbContainer,
    mdbIcon,
    mdbRow,
  },
};
</script>
